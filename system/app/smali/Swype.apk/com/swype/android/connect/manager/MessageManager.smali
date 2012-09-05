.class public Lcom/swype/android/connect/manager/MessageManager;
.super Lcom/swype/android/connect/manager/AbstractCommandManager;
.source "MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/connect/manager/MessageManager$ValidCommands;,
        Lcom/swype/android/connect/manager/MessageManager$Message;
    }
.end annotation


# static fields
.field public static final COMMAND_FAMILY:Ljava/lang/String; = "messaging"

.field public static final INTENT_MESSAGE:Ljava/lang/String; = "com.swype.android.connect.settings.MessagesActivity"

.field private static final INTENT_PRIVACY:Ljava/lang/String; = "com.swype.android.connect.settings.ConnectPreferenceActivity"

.field public static final INTENT_UPGRADE:Ljava/lang/String; = "com.swype.android.inputmethod.SwypeSettings"

.field private static final MESSAGE_EXPIRATION_SECONDS:J = 0x76a700L

.field public static final MESSAGE_MODE_NOTIFICATION:Ljava/lang/String; = "NOTIFICATION"

.field public static final MESSAGE_MODE_SETTINGS:Ljava/lang/String; = "SETTINGS"

.field public static final MESSAGE_MODE_TOAST:Ljava/lang/String; = "TOAST"

.field private static final MESSAGE_TARGET_MESSAGE:Ljava/lang/String; = "MESSAGE"

.field private static final MESSAGE_TARGET_NONE:Ljava/lang/String; = "NONE"

.field private static final MESSAGE_TARGET_PRIVACY:Ljava/lang/String; = "PRIVACY"

.field private static final MESSAGE_TARGET_UPGRADE:Ljava/lang/String; = "UPGRADE"

.field private static final MESSAGE_TARGET_URL:Ljava/lang/String; = "URL"


# instance fields
.field private lastMessage:Lcom/swype/android/connect/manager/MessageManager$Message;

.field private notification:Lcom/swype/android/connect/util/ConnectNotification;

.field private systemMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/swype/android/connect/manager/MessageManager$Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/swype/android/connect/ConnectClient;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/AbstractCommandManager;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    .line 115
    const/4 v0, 0x3

    iput v0, p0, Lcom/swype/android/connect/manager/MessageManager;->version:I

    .line 116
    const-string v0, "messaging"

    iput-object v0, p0, Lcom/swype/android/connect/manager/MessageManager;->commandFamily:Ljava/lang/String;

    .line 117
    const v0, 0xcdca6d

    iput v0, p0, Lcom/swype/android/connect/manager/MessageManager;->alarmUniqueId:I

    .line 118
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    .line 119
    return-void
.end method

.method private broadcastReceivedMessage()V
    .registers 3

    .prologue
    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.connect.ReceivedMessage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/swype/android/connect/manager/MessageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/ConnectClient;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    return-void
.end method

.method private doNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "message"
    .parameter "target"
    .parameter "url"

    .prologue
    const/4 v8, 0x0

    .line 429
    const-wide/32 v4, 0x7fffffff

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    and-long/2addr v4, v6

    long-to-int v2, v4

    .line 430
    .local v2, id:I
    const-string v0, "com.swype.android.connect.settings.MessagesActivity"

    .line 431
    .local v0, action:Ljava/lang/String;
    new-instance v4, Lcom/swype/android/connect/util/ConnectNotification;

    iget-object v5, p0, Lcom/swype/android/connect/manager/MessageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-direct {v4, v5, v2}, Lcom/swype/android/connect/util/ConnectNotification;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/swype/android/connect/manager/MessageManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    .line 433
    if-eqz p2, :cond_21

    .line 434
    const-string v4, "UPGRADE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 435
    const-string v0, "com.swype.android.inputmethod.SwypeSettings"

    .line 441
    :cond_21
    :goto_21
    iget-object v4, p0, Lcom/swype/android/connect/manager/MessageManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    const v5, 0x7f070001

    invoke-virtual {v4, v5}, Lcom/swype/android/connect/util/ConnectNotification;->setTitle(I)V

    .line 442
    iget-object v4, p0, Lcom/swype/android/connect/manager/MessageManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    invoke-virtual {v4, p1}, Lcom/swype/android/connect/util/ConnectNotification;->setText(Ljava/lang/String;)V

    .line 443
    iget-object v4, p0, Lcom/swype/android/connect/manager/MessageManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    invoke-virtual {v4}, Lcom/swype/android/connect/util/ConnectNotification;->setFlagAutoCancel()V

    .line 444
    if-eqz p2, :cond_68

    const-string v4, "URL"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 445
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 446
    .local v1, i:Landroid/content/Intent;
    iget-object v4, p0, Lcom/swype/android/connect/manager/MessageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v4}, Lcom/swype/android/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 447
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/swype/android/connect/manager/MessageManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    invoke-virtual {v4, v3}, Lcom/swype/android/connect/util/ConnectNotification;->setIntent(Landroid/app/PendingIntent;)V

    .line 451
    .end local v1           #i:Landroid/content/Intent;
    .end local v3           #pendingIntent:Landroid/app/PendingIntent;
    :goto_57
    iget-object v4, p0, Lcom/swype/android/connect/manager/MessageManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    invoke-virtual {v4}, Lcom/swype/android/connect/util/ConnectNotification;->showAndCleanup()V

    .line 452
    return-void

    .line 436
    :cond_5d
    const-string v4, "PRIVACY"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 437
    const-string v0, "com.swype.android.connect.settings.ConnectPreferenceActivity"

    goto :goto_21

    .line 449
    :cond_68
    iget-object v4, p0, Lcom/swype/android/connect/manager/MessageManager;->notification:Lcom/swype/android/connect/util/ConnectNotification;

    invoke-virtual {v4, v0}, Lcom/swype/android/connect/util/ConnectNotification;->createIntent(Ljava/lang/String;)V

    goto :goto_57
.end method

.method public static loadSystemMessages(Landroid/content/SharedPreferences;)Ljava/util/LinkedHashMap;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/swype/android/connect/manager/MessageManager$Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    const-string v0, "MESSAGES_STORED"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Data;->unserializeObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 355
    if-nez v0, :cond_a2

    .line 356
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v2, v0

    .line 360
    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v3, 0x1cf7c5800L

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 361
    const/4 v0, 0x0

    .line 362
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    :cond_31
    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 363
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 364
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swype/android/connect/manager/MessageManager$Message;

    .line 365
    const-wide/high16 v6, -0x8000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 367
    :try_start_49
    new-instance v7, Ljava/lang/Long;

    iget-object v1, v1, Lcom/swype/android/connect/manager/MessageManager$Message;->time:Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_50} :catch_7f

    move-object v1, v7

    .line 372
    :goto_51
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_31

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadSystemMessages() -- removing message "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 374
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 375
    const/4 v0, 0x1

    move v5, v0

    .line 376
    goto :goto_31

    .line 368
    :catch_7f
    move-exception v1

    .line 370
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadSystemMessages() -- invalid timestamp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    move-object v1, v6

    goto :goto_51

    .line 379
    :cond_9c
    if-eqz v5, :cond_a1

    .line 380
    invoke-static {p0, v2}, Lcom/swype/android/connect/manager/MessageManager;->saveSystemMessages(Landroid/content/SharedPreferences;Ljava/util/Map;)V

    .line 383
    :cond_a1
    return-object v2

    :cond_a2
    move-object v2, v0

    goto/16 :goto_19
.end method

.method private preProcessGetMessageByIDResponse(Lcom/swype/android/connect/manager/MessageManager$ValidCommands;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 9
    .parameter "command"
    .parameter "responseStatus"
    .parameter "messageId"
    .parameter "getID"

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, handled:Z
    invoke-virtual {p1, p2}, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->isExpectedResponse(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 411
    const/4 v0, 0x1

    .line 412
    iget v1, p0, Lcom/swype/android/connect/manager/MessageManager;->lastCommandRetryCount:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_36

    .line 413
    iget-object v1, p0, Lcom/swype/android/connect/manager/MessageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/swype/android/connect/manager/MessageManager;->calcMessageSendDelay()J

    move-result-wide v2

    invoke-virtual {v1, p3, v2, v3}, Lcom/swype/android/connect/ConnectClient;->postMessageDelayed(IJ)V

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preProcessResponse() -- Response from server is not an expected response.  Command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Response Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 418
    :cond_36
    return v0
.end method

.method private processAckMessageResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 6
    .parameter

    .prologue
    .line 314
    sget-object v0, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->getNext:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const/16 v2, 0x2c

    invoke-virtual {p0, v0, v1, v2}, Lcom/swype/android/connect/manager/MessageManager;->preProcessResponse(Ljava/lang/Enum;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 336
    :goto_c
    return-void

    .line 318
    :cond_d
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/swype/android/connect/manager/MessageManager;->lastMessage:Lcom/swype/android/connect/manager/MessageManager$Message;

    iget-object v0, v0, Lcom/swype/android/connect/manager/MessageManager$Message;->modes:[Ljava/lang/String;

    if-eqz v0, :cond_87

    .line 319
    const/4 v0, 0x0

    :goto_1e
    iget-object v1, p0, Lcom/swype/android/connect/manager/MessageManager;->lastMessage:Lcom/swype/android/connect/manager/MessageManager$Message;

    iget-object v1, v1, Lcom/swype/android/connect/manager/MessageManager$Message;->modes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_87

    .line 320
    iget-object v1, p0, Lcom/swype/android/connect/manager/MessageManager;->lastMessage:Lcom/swype/android/connect/manager/MessageManager$Message;

    iget-object v1, v1, Lcom/swype/android/connect/manager/MessageManager$Message;->modes:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 321
    const-string v2, "SETTINGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 322
    iget-object v1, p0, Lcom/swype/android/connect/manager/MessageManager;->lastMessage:Lcom/swype/android/connect/manager/MessageManager$Message;

    .line 323
    iget-object v2, p0, Lcom/swype/android/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    iget-object v3, p0, Lcom/swype/android/connect/manager/MessageManager;->lastMessage:Lcom/swype/android/connect/manager/MessageManager$Message;

    iget-object v3, v3, Lcom/swype/android/connect/manager/MessageManager$Message;->messageId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 324
    :cond_41
    const-string v2, "TOAST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 325
    iget-object v1, p0, Lcom/swype/android/connect/manager/MessageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v2, 0x4f

    iget-object v3, p0, Lcom/swype/android/connect/manager/MessageManager;->lastMessage:Lcom/swype/android/connect/manager/MessageManager$Message;

    iget-object v3, v3, Lcom/swype/android/connect/manager/MessageManager$Message;->subject:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    goto :goto_3e

    .line 326
    :cond_55
    const-string v2, "NOTIFICATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processAckMessageResponse lastMessage.url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/swype/android/connect/manager/MessageManager;->lastMessage:Lcom/swype/android/connect/manager/MessageManager$Message;

    iget-object v2, v2, Lcom/swype/android/connect/manager/MessageManager$Message;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/swype/android/connect/manager/MessageManager;->lastMessage:Lcom/swype/android/connect/manager/MessageManager$Message;

    iget-object v1, v1, Lcom/swype/android/connect/manager/MessageManager$Message;->subject:Ljava/lang/String;

    iget-object v2, p0, Lcom/swype/android/connect/manager/MessageManager;->lastMessage:Lcom/swype/android/connect/manager/MessageManager$Message;

    iget-object v2, v2, Lcom/swype/android/connect/manager/MessageManager$Message;->target:Ljava/lang/String;

    iget-object v3, p0, Lcom/swype/android/connect/manager/MessageManager;->lastMessage:Lcom/swype/android/connect/manager/MessageManager$Message;

    iget-object v3, v3, Lcom/swype/android/connect/manager/MessageManager$Message;->url:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/swype/android/connect/manager/MessageManager;->doNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 334
    :cond_87
    invoke-direct {p0}, Lcom/swype/android/connect/manager/MessageManager;->savePreferences()V

    .line 335
    invoke-direct {p0}, Lcom/swype/android/connect/manager/MessageManager;->broadcastReceivedMessage()V

    goto/16 :goto_c
.end method

.method private processMessageResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 13
    .parameter

    .prologue
    .line 210
    sget-object v1, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->get:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    iget-object v2, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const/16 v3, 0x2d

    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->initialCommand:Lcom/swype/android/connect/util/Command;

    iget-object v0, v0, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v4, "messageId"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/swype/android/connect/manager/MessageManager;->preProcessGetMessageByIDResponse(Lcom/swype/android/connect/manager/MessageManager$ValidCommands;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 256
    :goto_18
    return-void

    .line 215
    :cond_19
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 216
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "subject"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 218
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "target"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 219
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "messageId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v5, "language"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 221
    iget-object v8, p1, Lcom/swype/android/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    .line 222
    const/4 v5, 0x0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    Message=["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "] messageId=["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 225
    :try_start_7e
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v6, "mode"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 226
    if-eqz v0, :cond_f5

    .line 227
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 228
    const/4 v6, 0x0

    :goto_91
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_a0

    .line 229
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_7e .. :try_end_9d} :catch_de

    .line 228
    add-int/lit8 v6, v6, 0x1

    goto :goto_91

    :cond_a0
    move-object v0, v5

    :goto_a1
    move-object v5, v0

    .line 236
    :goto_a2
    iget-object v0, p0, Lcom/swype/android/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 237
    iget-object v0, p0, Lcom/swype/android/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/connect/manager/MessageManager$Message;

    .line 238
    iput-object v2, v0, Lcom/swype/android/connect/manager/MessageManager$Message;->subject:Ljava/lang/String;

    .line 239
    iput-object v3, v0, Lcom/swype/android/connect/manager/MessageManager$Message;->body:Ljava/lang/String;

    .line 240
    iput-object v4, v0, Lcom/swype/android/connect/manager/MessageManager$Message;->target:Ljava/lang/String;

    .line 241
    iput-object v5, v0, Lcom/swype/android/connect/manager/MessageManager$Message;->modes:[Ljava/lang/String;

    .line 242
    iput-object v7, v0, Lcom/swype/android/connect/manager/MessageManager$Message;->language:Ljava/lang/String;

    .line 243
    iput-object v8, v0, Lcom/swype/android/connect/manager/MessageManager$Message;->url:Ljava/lang/String;

    .line 247
    :goto_be
    iget-object v2, p0, Lcom/swype/android/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/swype/android/connect/manager/MessageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->isAutomationSuppressed()Z

    move-result v0

    if-nez v0, :cond_d6

    .line 250
    iget-object v0, p0, Lcom/swype/android/connect/manager/MessageManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x53

    invoke-virtual {p0}, Lcom/swype/android/connect/manager/MessageManager;->getMessagesAsBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 254
    :cond_d6
    invoke-direct {p0}, Lcom/swype/android/connect/manager/MessageManager;->savePreferences()V

    .line 255
    invoke-direct {p0}, Lcom/swype/android/connect/manager/MessageManager;->broadcastReceivedMessage()V

    goto/16 :goto_18

    .line 232
    :catch_de
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_a2

    .line 245
    :cond_e7
    new-instance v0, Lcom/swype/android/connect/manager/MessageManager$Message;

    invoke-static {}, Lcom/swype/android/connect/manager/MessageManager;->getCurrentTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v8}, Lcom/swype/android/connect/manager/MessageManager$Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_be

    :cond_f5
    move-object v0, v5

    goto :goto_a1
.end method

.method private processNextMessageResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 13
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 273
    const-string v0, "Received Message Response from Server"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 275
    sget-object v0, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->getNext:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const/16 v2, 0x2c

    invoke-virtual {p0, v0, v1, v2}, Lcom/swype/android/connect/manager/MessageManager;->preProcessResponse(Ljava/lang/Enum;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 307
    :cond_12
    :goto_12
    return-void

    .line 279
    :cond_13
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 280
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "subject"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 281
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 282
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "target"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 283
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "messageId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 284
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v6, "language"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 285
    iget-object v8, p1, Lcom/swype/android/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    .line 287
    new-instance v0, Lcom/swype/android/connect/manager/MessageManager$Message;

    invoke-static {}, Lcom/swype/android/connect/manager/MessageManager;->getCurrentTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v8}, Lcom/swype/android/connect/manager/MessageManager$Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/swype/android/connect/manager/MessageManager;->lastMessage:Lcom/swype/android/connect/manager/MessageManager$Message;

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Message=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] messageId=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "url["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 290
    :try_start_96
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 291
    if-eqz v0, :cond_c0

    .line 292
    iget-object v1, p0, Lcom/swype/android/connect/manager/MessageManager;->lastMessage:Lcom/swype/android/connect/manager/MessageManager$Message;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/swype/android/connect/manager/MessageManager$Message;->modes:[Ljava/lang/String;

    .line 293
    const/4 v1, 0x0

    :goto_ad
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_c5

    .line 294
    iget-object v2, p0, Lcom/swype/android/connect/manager/MessageManager;->lastMessage:Lcom/swype/android/connect/manager/MessageManager$Message;

    iget-object v2, v2, Lcom/swype/android/connect/manager/MessageManager$Message;->modes:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_ad

    .line 297
    :cond_c0
    iget-object v0, p0, Lcom/swype/android/connect/manager/MessageManager;->lastMessage:Lcom/swype/android/connect/manager/MessageManager$Message;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/swype/android/connect/manager/MessageManager$Message;->modes:[Ljava/lang/String;
    :try_end_c5
    .catch Lorg/json/JSONException; {:try_start_96 .. :try_end_c5} :catch_dc

    .line 303
    :cond_c5
    :goto_c5
    iget-object v0, p0, Lcom/swype/android/connect/manager/MessageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->isAutomationSuppressed()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/swype/android/connect/manager/MessageManager;->lastMessage:Lcom/swype/android/connect/manager/MessageManager$Message;

    iget-object v0, v0, Lcom/swype/android/connect/manager/MessageManager$Message;->messageId:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 304
    iget-object v0, p0, Lcom/swype/android/connect/manager/MessageManager;->lastMessage:Lcom/swype/android/connect/manager/MessageManager$Message;

    iget-object v0, v0, Lcom/swype/android/connect/manager/MessageManager$Message;->messageId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/MessageManager;->ackMessage(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 299
    :catch_dc
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_c5
.end method

.method private savePreferences()V
    .registers 3

    .prologue
    .line 390
    const-string v0, "MessgeManager.savePreference()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/swype/android/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/swype/android/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 392
    iget-object v0, p0, Lcom/swype/android/connect/manager/MessageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/swype/android/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/swype/android/connect/manager/MessageManager;->saveSystemMessages(Landroid/content/SharedPreferences;Ljava/util/Map;)V

    .line 395
    :cond_1c
    return-void
.end method

.method public static saveSystemMessages(Landroid/content/SharedPreferences;Ljava/util/Map;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/swype/android/connect/manager/MessageManager$Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 399
    const-string v1, "MESSAGES_STORED"

    invoke-static {p1}, Lcom/swype/android/connect/util/Data;->serializeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/swype/android/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 400
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 401
    return-void
.end method


# virtual methods
.method public ackMessage(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 163
    if-nez p1, :cond_8

    .line 164
    const-string v0, "Attempting to acknowledge a null message"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 173
    :goto_7
    return-void

    .line 168
    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    const-string v1, "messageId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/MessageManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 171
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/MessageManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 172
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/MessageManager;->loadPreferences()V

    goto :goto_7
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .parameter "type"
    .parameter "data"

    .prologue
    .line 203
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/swype/android/connect/manager/MessageManager;->savePreferences()V

    .line 130
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->DISABLED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/MessageManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 131
    return-void
.end method

.method public getMessage(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    const-string v1, "language"

    iget-object v2, p0, Lcom/swype/android/connect/manager/MessageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/swype/android/connect/ConnectClient;->getCurrentLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "messageId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->get:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/MessageManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 142
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/MessageManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 143
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/MessageManager;->loadPreferences()V

    .line 144
    return-void
.end method

.method public getMessagesAsBundle()Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v0, b:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/swype/android/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_31

    .line 261
    iget-object v3, p0, Lcom/swype/android/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 262
    .local v1, entry:Ljava/lang/String;
    iget-object v3, p0, Lcom/swype/android/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swype/android/connect/manager/MessageManager$Message;

    iget-object v3, v3, Lcom/swype/android/connect/manager/MessageManager$Message;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 265
    .end local v1           #entry:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_31
    return-object v0
.end method

.method public getNextMessage()V
    .registers 4

    .prologue
    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    const-string v1, "language"

    iget-object v2, p0, Lcom/swype/android/connect/manager/MessageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/swype/android/connect/ConnectClient;->getCurrentLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->getNext:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/MessageManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 153
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/swype/android/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 154
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/MessageManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 155
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/MessageManager;->loadPreferences()V

    .line 156
    return-void
.end method

.method public loadPreferences()V
    .registers 3

    .prologue
    .line 348
    iget-object v1, p0, Lcom/swype/android/connect/manager/MessageManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 349
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/swype/android/connect/manager/MessageManager;->loadSystemMessages(Landroid/content/SharedPreferences;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    .line 350
    return-void
.end method

.method public onResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 4
    .parameter

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/MessageManager;->loadPreferences()V

    .line 190
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    sget-object v1, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->get:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 191
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/MessageManager;->processMessageResponse(Lcom/swype/android/connect/util/Response;)V

    .line 199
    :goto_14
    return-void

    .line 192
    :cond_15
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    sget-object v1, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->getNext:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 193
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/MessageManager;->processNextMessageResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_14

    .line 194
    :cond_27
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    sget-object v1, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/MessageManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/MessageManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 195
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/MessageManager;->processAckMessageResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_14

    .line 197
    :cond_39
    const-string v0, "unknown command sent to SystemManager"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public refreshMessages()V
    .registers 5

    .prologue
    .line 179
    iget-object v2, p0, Lcom/swype/android/connect/manager/MessageManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    sget-object v3, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    invoke-virtual {v2, v3}, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 180
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/MessageManager;->loadPreferences()V

    .line 181
    iget-object v2, p0, Lcom/swype/android/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    .local v1, messageId:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/swype/android/connect/manager/MessageManager;->getMessage(Ljava/lang/String;)V

    goto :goto_17

    .line 185
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #messageId:Ljava/lang/String;
    :cond_27
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 123
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/MessageManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 124
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/MessageManager;->loadPreferences()V

    .line 125
    return-void
.end method
