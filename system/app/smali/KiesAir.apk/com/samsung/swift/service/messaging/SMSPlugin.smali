.class public Lcom/samsung/swift/service/messaging/SMSPlugin;
.super Ljava/lang/Object;
.source "SMSPlugin.java"


# static fields
.field public static final FOLDER_DRAFT:I = 0x3

.field public static final FOLDER_FAILED:I = 0x5

.field public static final FOLDER_INBOX:I = 0x1

.field public static final FOLDER_OUTBOX:I = 0x4

.field public static final FOLDER_QUEUED:I = 0x6

.field public static final FOLDER_SENT:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = null

.field private static final PHONE_MIME_TYPE_WHERE_CLAUSE:Ljava/lang/String; = "mimetype=\'vnd.android.cursor.item/phone_v2\'"

.field public static final SMS_DELIVERED_ACTION:Ljava/lang/String; = "com.samsung.swift.service.messaging.SMS_DELIVERED"

.field public static final SMS_SENT_ACTION:Ljava/lang/String; = "com.samsung.swift.service.messaging.SMS_SENT"

.field public static final SORT_NATURAL:I = 0x1

.field public static final SORT_TIMESTAMP_DESCENDING:I = 0x2

.field private static _contentUri:Ljava/lang/String; = null

.field private static _isSKT:Ljava/lang/Boolean; = null

.field private static final confirmationReceiver:Lcom/samsung/swift/service/messaging/ConfirmationReceiver; = null

.field private static final monitor:Ljava/lang/Object; = null

.field private static pbSmsObserver:Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver; = null

.field private static phoneNumberCache:Lcom/samsung/swift/service/phonebook/PhoneNumberCache; = null

.field private static final random:Ljava/util/Random; = null

.field protected static final refCounter:Lcom/samsung/swift/util/PeerRefCounter; = null

.field private static revision:Ljava/lang/String; = null

.field private static smsObserver:Lcom/samsung/swift/service/messaging/SMSContentObserver; = null

.field private static final updateWhereClause:Ljava/lang/String; = "_id = ?"

.field private static final updateWhereClauseSTK:Ljava/lang/String; = "RootID = ?"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 148
    const-class v0, Lcom/samsung/swift/service/messaging/SMSPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/samsung/swift/service/messaging/ConfirmationReceiver;

    invoke-direct {v0}, Lcom/samsung/swift/service/messaging/ConfirmationReceiver;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->confirmationReceiver:Lcom/samsung/swift/service/messaging/ConfirmationReceiver;

    .line 159
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->random:Ljava/util/Random;

    .line 160
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->calcRandomRevision()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->revision:Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->monitor:Ljava/lang/Object;

    .line 163
    new-instance v0, Lcom/samsung/swift/util/PeerRefCounter;

    invoke-direct {v0}, Lcom/samsung/swift/util/PeerRefCounter;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SendKoreanMessage(Lcom/samsung/swift/service/messaging/Message;)Z
    .registers 15
    .parameter "m"

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 886
    const/4 v0, 0x0

    .line 980
    :goto_b
    return v0

    .line 889
    :cond_c
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/swift/service/messaging/Message;->setFolderId(Ljava/lang/String;)V

    .line 892
    const/4 v8, 0x0

    .line 895
    .local v8, id:Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M110S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M220L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 898
    :cond_29
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.btb.ums.intent.action.SEND_SMS_BACKGROUND"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    .local v9, it:Landroid/content/Intent;
    const-string v0, "SendToMdn"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    const-string v0, "Message"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->body()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    const/high16 v0, 0x1000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 902
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 903
    const-string v8, "1"

    .line 930
    :goto_50
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->body()Ljava/lang/String;

    move-result-object v6

    .line 933
    .local v6, body:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5c

    .line 934
    const-string v6, " "

    .line 938
    :cond_5c
    new-instance v12, Landroid/content/Intent;

    const-string v0, "com.samsung.swift.service.messaging.SMS_SENT"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .local v12, sentIntent:Landroid/content/Intent;
    const-string v0, "ToMdn"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    const-string v0, "UniqueKey"

    const-string v1, "341446757278"

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    const-string v0, "Message"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->body()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 942
    const-string v0, "MessageRootId"

    invoke-virtual {v12, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    const-string v0, "id"

    invoke-virtual {v12, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 945
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 947
    .local v10, pi:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    sget-object v1, Lcom/samsung/swift/service/messaging/SMSPlugin;->confirmationReceiver:Lcom/samsung/swift/service/messaging/ConfirmationReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "com.samsung.swift.service.messaging.SMS_SENT"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/swift/service/SwiftService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 949
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 950
    .local v3, messageParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .local v4, intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_b2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_139

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 952
    .local v11, s:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b2

    .line 906
    .end local v3           #messageParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v6           #body:Ljava/lang/String;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #it:Landroid/content/Intent;
    .end local v10           #pi:Landroid/app/PendingIntent;
    .end local v11           #s:Ljava/lang/String;
    .end local v12           #sentIntent:Landroid/content/Intent;
    :cond_c3
    const/4 v0, 0x1

    new-array v13, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 907
    .local v13, strArrData:[Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.android.mms.transaction.Send.SMS"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 908
    .restart local v9       #it:Landroid/content/Intent;
    const-string v0, "recipient"

    invoke-virtual {v9, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    const-string v0, "text"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->body()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 913
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M180S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHV-E110S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHV-E120L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHV-E120S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHV-E160S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHV-E160L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M340L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 921
    :cond_12f
    const-string v8, "1"

    goto/16 :goto_50

    .line 925
    :cond_133
    invoke-static {p0}, Lcom/samsung/swift/service/messaging/SMSPlugin;->insertMessage(Lcom/samsung/swift/service/messaging/Message;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_50

    .line 954
    .end local v13           #strArrData:[Ljava/lang/String;
    .restart local v3       #messageParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .restart local v6       #body:Ljava/lang/String;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v10       #pi:Landroid/app/PendingIntent;
    .restart local v12       #sentIntent:Landroid/content/Intent;
    :cond_139
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 957
    sget-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.os.Build.MODEL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M250S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M260S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M110S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M180S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M220L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M250L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M260L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHV-E110S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHV-E120S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHV-E120L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHV-E160S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M340L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHV-E160L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M380S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M380L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M340S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_206

    .line 975
    :cond_1fc
    sget-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v1, "Special case for M250/M260 - not calling sendMultipartTextMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :goto_203
    const/4 v0, 0x1

    goto/16 :goto_b

    .line 978
    :cond_206
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_203
.end method

.method private static add(Lcom/samsung/swift/service/messaging/Message;)V
    .registers 1
    .parameter "message"

    .prologue
    .line 199
    invoke-static {p0}, Lcom/samsung/swift/service/messaging/SMSPlugin;->insertMessage(Lcom/samsung/swift/service/messaging/Message;)Ljava/lang/String;

    .line 200
    return-void
.end method

.method private static addToCallLog(Lcom/samsung/swift/service/messaging/Message;)V
    .registers 7
    .parameter "m"

    .prologue
    .line 1945
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1947
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1949
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "number"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destinationName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b2

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destinationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b2

    .line 1952
    const-string v3, "name"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destinationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    :goto_2b
    const-string v3, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1959
    sget-object v3, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Android version SDK_INT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_bd

    .line 1962
    const-string v3, "type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1963
    const-string v3, "messageid"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    const-string v3, "logtype"

    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1965
    const-string v3, "new"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1966
    const-string v3, "m_content"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->body()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    const-string v3, "content://logs/sms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1975
    .local v1, resultUri:Landroid/net/Uri;
    :goto_93
    if-eqz v1, :cond_d8

    .line 1977
    sget-object v3, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding message to call log table successed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    :goto_b1
    return-void

    .line 1955
    .end local v1           #resultUri:Landroid/net/Uri;
    :cond_b2
    const-string v3, "name"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 1970
    :cond_bd
    const-string v3, "type"

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1971
    const-string v3, "message_id"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #resultUri:Landroid/net/Uri;
    goto :goto_93

    .line 1980
    :cond_d8
    sget-object v3, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v4, "Adding message to call log table fail"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1
.end method

.method private static arrayIsNumeric([Ljava/lang/String;)Z
    .registers 4
    .parameter "a"

    .prologue
    .line 1824
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_f

    .line 1826
    :try_start_4
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_9} :catch_c

    .line 1824
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1828
    :catch_c
    move-exception v0

    .line 1829
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    .line 1832
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :goto_e
    return v2

    :cond_f
    const/4 v2, 0x1

    goto :goto_e
.end method

.method private static buildMessage(Landroid/database/Cursor;Ljava/util/Map;)Lcom/samsung/swift/service/messaging/Message;
    .registers 29
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/swift/service/phonebook/PhoneNumber;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/swift/service/messaging/Message;",
            ">;>;)",
            "Lcom/samsung/swift/service/messaging/Message;"
        }
    .end annotation

    .prologue
    .line 1515
    .local p1, phoneNumberMessages:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;>;"
    new-instance v19, Lcom/samsung/swift/service/messaging/Message;

    invoke-direct/range {v19 .. v19}, Lcom/samsung/swift/service/messaging/Message;-><init>()V

    .line 1518
    .local v19, m:Lcom/samsung/swift/service/messaging/Message;
    const-string v5, "body"

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1519
    .local v13, body:Ljava/lang/String;
    if-eqz v13, :cond_1e

    .line 1521
    invoke-static {v13}, Lcom/samsung/swift/service/messaging/SMSPlugin;->stripControlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setBody(Ljava/lang/String;)V

    .line 1526
    :cond_1e
    const-string v5, "type"

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1527
    .local v26, type:I
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setFolderId(Ljava/lang/String;)V

    .line 1528
    packed-switch v26, :pswitch_data_2ba

    .line 1553
    :goto_38
    const-string v5, "_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1554
    .local v16, id:Ljava/lang/String;
    if-eqz v16, :cond_4f

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/messaging/Message;->setId(Ljava/lang/String;)V

    .line 1557
    :cond_4f
    const-string v5, "address"

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1558
    .local v11, address:Ljava/lang/String;
    if-eqz v11, :cond_175

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_175

    .line 1560
    const/4 v5, 0x1

    move/from16 v0, v26

    if-ne v0, v5, :cond_15b

    .line 1562
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setSource(Ljava/lang/String;)V

    .line 1647
    :cond_86
    :goto_86
    const-string v5, "read"

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_283

    .line 1649
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setRead(Z)V

    .line 1656
    :goto_9c
    if-nez v11, :cond_a0

    .line 1658
    const-string v11, "-1"

    .line 1661
    :cond_a0
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->isDualSim()Z

    move-result v5

    if-eqz v5, :cond_2a0

    .line 1663
    const-string v5, "band"

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1664
    .local v12, band:I
    if-nez v12, :cond_294

    .line 1666
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->hasWCDMA()Z

    move-result v5

    if-eqz v5, :cond_28b

    .line 1667
    const-string v5, "wcdma"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setNetwork(Ljava/lang/String;)V

    .line 1680
    .end local v12           #band:I
    :cond_c3
    :goto_c3
    invoke-static {v11}, Lcom/samsung/swift/service/phonebook/PhoneNumber;->fromString(Ljava/lang/String;)Lcom/samsung/swift/service/phonebook/PhoneNumber;

    move-result-object v21

    .line 1681
    .local v21, pn:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    if-eqz v21, :cond_e7

    .line 1683
    const/16 v20, 0x0

    .line 1685
    .local v20, messages:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    check-cast v20, Ljava/util/List;

    .restart local v20       #messages:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    if-eqz v20, :cond_2ab

    .line 1687
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1696
    :goto_de
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    .end local v20           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    :cond_e7
    const-string v5, "thread_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1701
    .local v24, threadid:Ljava/lang/String;
    if-eqz v24, :cond_fe

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/messaging/Message;->setThreadId(Ljava/lang/String;)V

    .line 1703
    :cond_fe
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setType(I)V

    .line 1705
    const-string v5, "date"

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1706
    .local v17, jtimestamp:J
    const-wide/16 v7, 0x3e8

    div-long v17, v17, v7

    .line 1707
    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v25, v0

    .line 1708
    .local v25, timestamp:I
    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/messaging/Message;->setTimestamp(I)V

    .line 1709
    return-object v19

    .line 1531
    .end local v11           #address:Ljava/lang/String;
    .end local v16           #id:Ljava/lang/String;
    .end local v17           #jtimestamp:J
    .end local v21           #pn:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    .end local v24           #threadid:Ljava/lang/String;
    .end local v25           #timestamp:I
    :pswitch_123
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setSent(Z)V

    .line 1532
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setQueued(Z)V

    goto/16 :goto_38

    .line 1535
    :pswitch_131
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setSent(Z)V

    .line 1536
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setQueued(Z)V

    goto/16 :goto_38

    .line 1539
    :pswitch_13f
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setSent(Z)V

    .line 1540
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setQueued(Z)V

    goto/16 :goto_38

    .line 1545
    :pswitch_14d
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setSent(Z)V

    .line 1546
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setQueued(Z)V

    goto/16 :goto_38

    .line 1566
    .restart local v11       #address:Ljava/lang/String;
    .restart local v16       #id:Ljava/lang/String;
    :cond_15b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setDestination(Ljava/lang/String;)V

    goto/16 :goto_86

    .line 1569
    :cond_175
    const/4 v5, 0x3

    move/from16 v0, v26

    if-ne v0, v5, :cond_86

    .line 1576
    const-string v5, "thread_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1578
    .restart local v24       #threadid:Ljava/lang/String;
    if-eqz v24, :cond_86

    .line 1579
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1580
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mms-sms/conversations/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/recipients"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1581
    .local v4, u:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1582
    .local v22, recipientCursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 1585
    .local v14, canonicalCursor:Landroid/database/Cursor;
    if-eqz v22, :cond_268

    .line 1587
    :try_start_1b8
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_24d

    .line 1589
    const-string v5, "recipient_ids"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1593
    .local v23, recipient_id:Ljava/lang/String;
    const-string v5, " "

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 1594
    .local v15, firstSpace:I
    const/4 v5, -0x1

    if-eq v15, v5, :cond_1de

    .line 1596
    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 1600
    :cond_1de
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mms-sms/canonical-address/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1601
    .local v6, canonicalUri:Landroid/net/Uri;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1603
    if-eqz v14, :cond_245

    .line 1605
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_231

    .line 1607
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1609
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setDestination(Ljava/lang/String;)V
    :try_end_225
    .catchall {:try_start_1b8 .. :try_end_225} :catchall_239

    .line 1633
    if-eqz v22, :cond_22a

    .line 1635
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1638
    :cond_22a
    if-eqz v14, :cond_86

    .line 1640
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_86

    .line 1613
    :cond_231
    :try_start_231
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v7, "Could not retrieve recipient address"

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_239
    .catchall {:try_start_231 .. :try_end_239} :catchall_239

    .line 1633
    .end local v6           #canonicalUri:Landroid/net/Uri;
    .end local v15           #firstSpace:I
    .end local v23           #recipient_id:Ljava/lang/String;
    :catchall_239
    move-exception v5

    if-eqz v22, :cond_23f

    .line 1635
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1638
    :cond_23f
    if-eqz v14, :cond_244

    .line 1640
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1633
    :cond_244
    throw v5

    .line 1618
    .restart local v6       #canonicalUri:Landroid/net/Uri;
    .restart local v15       #firstSpace:I
    .restart local v23       #recipient_id:Ljava/lang/String;
    :cond_245
    :try_start_245
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v7, "Could not retrieve recipient address"

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1623
    .end local v6           #canonicalUri:Landroid/net/Uri;
    .end local v15           #firstSpace:I
    .end local v23           #recipient_id:Ljava/lang/String;
    :cond_24d
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not retrieve thread id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1628
    :cond_268
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not retrieve thread id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_283
    .catchall {:try_start_245 .. :try_end_283} :catchall_239

    .line 1653
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v4           #u:Landroid/net/Uri;
    .end local v14           #canonicalCursor:Landroid/database/Cursor;
    .end local v22           #recipientCursor:Landroid/database/Cursor;
    .end local v24           #threadid:Ljava/lang/String;
    :cond_283
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setRead(Z)V

    goto/16 :goto_9c

    .line 1669
    .restart local v12       #band:I
    :cond_28b
    const-string v5, "cdma"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setNetwork(Ljava/lang/String;)V

    goto/16 :goto_c3

    .line 1671
    :cond_294
    const/4 v5, 0x1

    if-ne v12, v5, :cond_c3

    .line 1672
    const-string v5, "gsm"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setNetwork(Ljava/lang/String;)V

    goto/16 :goto_c3

    .line 1676
    .end local v12           #band:I
    :cond_2a0
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getSingleSimNetworkId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/samsung/swift/service/messaging/Message;->setNetwork(Ljava/lang/String;)V

    goto/16 :goto_c3

    .line 1691
    .restart local v20       #messages:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    .restart local v21       #pn:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    :cond_2ab
    new-instance v20, Ljava/util/ArrayList;

    .end local v20           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1693
    .restart local v20       #messages:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_de

    .line 1528
    nop

    :pswitch_data_2ba
    .packed-switch 0x1
        :pswitch_123
        :pswitch_131
        :pswitch_13f
        :pswitch_14d
        :pswitch_14d
        :pswitch_14d
    .end packed-switch
.end method

.method private static buildSKTMessage(Landroid/database/Cursor;Ljava/util/Map;)Lcom/samsung/swift/service/messaging/Message;
    .registers 16
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/swift/service/phonebook/PhoneNumber;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/swift/service/messaging/Message;",
            ">;>;)",
            "Lcom/samsung/swift/service/messaging/Message;"
        }
    .end annotation

    .prologue
    .line 1406
    .local p1, phoneNumberMessages:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;>;"
    new-instance v6, Lcom/samsung/swift/service/messaging/Message;

    invoke-direct {v6}, Lcom/samsung/swift/service/messaging/Message;-><init>()V

    .line 1408
    .local v6, m:Lcom/samsung/swift/service/messaging/Message;
    const-string v12, "Title"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1409
    .local v2, body:Ljava/lang/String;
    if-eqz v2, :cond_18

    .line 1411
    invoke-static {v2}, Lcom/samsung/swift/service/messaging/SMSPlugin;->stripControlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/samsung/swift/service/messaging/Message;->setBody(Ljava/lang/String;)V

    .line 1413
    :cond_18
    const-string v12, "MainType"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1418
    .local v11, type:I
    const/4 v0, -0x1

    .line 1420
    .local v0, DerivedType:I
    sparse-switch v11, :sswitch_data_126

    .line 1446
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/swift/service/messaging/Message;->setSent(Z)V

    .line 1447
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/samsung/swift/service/messaging/Message;->setQueued(Z)V

    .line 1452
    :goto_2e
    const-string v12, "RootID"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1453
    .local v3, id:Ljava/lang/String;
    if-eqz v3, :cond_3d

    invoke-virtual {v6, v3}, Lcom/samsung/swift/service/messaging/Message;->setId(Ljava/lang/String;)V

    .line 1456
    :cond_3d
    const-string v12, "MainType"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1458
    .local v7, mainType:I
    const-string v12, "MDN1st"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1459
    .local v1, address:Ljava/lang/String;
    if-eqz v1, :cond_76

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_76

    .line 1461
    const/4 v12, 0x1

    if-ne v0, v12, :cond_f0

    .line 1463
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tel:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/samsung/swift/service/messaging/Message;->setSource(Ljava/lang/String;)V

    .line 1472
    :cond_76
    :goto_76
    const-string v12, "Status"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/16 v13, 0x44d

    if-ne v12, v13, :cond_108

    .line 1474
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/samsung/swift/service/messaging/Message;->setRead(Z)V

    .line 1481
    :cond_88
    :goto_88
    if-nez v1, :cond_8c

    .line 1483
    const-string v1, "-1"

    .line 1486
    :cond_8c
    invoke-static {v1}, Lcom/samsung/swift/service/phonebook/PhoneNumber;->fromString(Ljava/lang/String;)Lcom/samsung/swift/service/phonebook/PhoneNumber;

    move-result-object v9

    .line 1487
    .local v9, pn:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    if-eqz v9, :cond_a1

    .line 1489
    const/4 v8, 0x0

    .line 1491
    .local v8, messages:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    check-cast v8, Ljava/util/List;

    .restart local v8       #messages:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    if-eqz v8, :cond_11c

    .line 1493
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1502
    :goto_9e
    invoke-interface {p1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    .end local v8           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    :cond_a1
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/samsung/swift/service/messaging/Message;->setType(I)V

    .line 1507
    const-string v12, "RegTime"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1508
    .local v4, jtimestamp:J
    const-wide/16 v12, 0x3e8

    div-long/2addr v4, v12

    .line 1509
    long-to-int v10, v4

    .line 1510
    .local v10, timestamp:I
    invoke-virtual {v6, v10}, Lcom/samsung/swift/service/messaging/Message;->setTimestamp(I)V

    .line 1511
    return-object v6

    .line 1424
    .end local v1           #address:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #jtimestamp:J
    .end local v7           #mainType:I
    .end local v9           #pn:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    .end local v10           #timestamp:I
    :sswitch_b7
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/swift/service/messaging/Message;->setSent(Z)V

    .line 1425
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/swift/service/messaging/Message;->setQueued(Z)V

    .line 1426
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/samsung/swift/service/messaging/Message;->setFolderId(Ljava/lang/String;)V

    .line 1427
    const/4 v0, 0x1

    .line 1428
    goto/16 :goto_2e

    .line 1431
    :sswitch_ca
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/samsung/swift/service/messaging/Message;->setSent(Z)V

    .line 1432
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/swift/service/messaging/Message;->setQueued(Z)V

    .line 1433
    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/samsung/swift/service/messaging/Message;->setFolderId(Ljava/lang/String;)V

    .line 1434
    const/4 v0, 0x2

    .line 1435
    goto/16 :goto_2e

    .line 1437
    :sswitch_dd
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/swift/service/messaging/Message;->setSent(Z)V

    .line 1438
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/swift/service/messaging/Message;->setQueued(Z)V

    .line 1439
    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/samsung/swift/service/messaging/Message;->setFolderId(Ljava/lang/String;)V

    .line 1440
    const/4 v0, 0x3

    .line 1441
    goto/16 :goto_2e

    .line 1467
    .restart local v1       #address:Ljava/lang/String;
    .restart local v3       #id:Ljava/lang/String;
    .restart local v7       #mainType:I
    :cond_f0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tel:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/samsung/swift/service/messaging/Message;->setDestination(Ljava/lang/String;)V

    goto/16 :goto_76

    .line 1476
    :cond_108
    const-string v12, "Status"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/16 v13, 0x44c

    if-ne v12, v13, :cond_88

    .line 1478
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/swift/service/messaging/Message;->setRead(Z)V

    goto/16 :goto_88

    .line 1497
    .restart local v8       #messages:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    .restart local v9       #pn:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    :cond_11c
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1499
    .restart local v8       #messages:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9e

    .line 1420
    :sswitch_data_126
    .sparse-switch
        0x0 -> :sswitch_b7
        0x1 -> :sswitch_ca
        0x2 -> :sswitch_dd
        0xa -> :sswitch_b7
        0xb -> :sswitch_ca
    .end sparse-switch
.end method

.method private static calcRandomRevision()Ljava/lang/String;
    .registers 3

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/swift/service/messaging/SMSPlugin;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static get(Ljava/lang/String;)Lcom/samsung/swift/service/messaging/Message;
    .registers 10
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 210
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 214
    .local v1, u:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 216
    .local v6, c:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_29
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 218
    if-eqz v6, :cond_35

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_5b

    move-result v2

    if-nez v2, :cond_3b

    .line 256
    :cond_35
    if-eqz v6, :cond_3a

    .line 258
    :goto_37
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_3a
    return-object v7

    .line 223
    :cond_3b
    :try_start_3b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 238
    new-instance v8, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 240
    .local v8, phoneNumberMessages:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;>;"
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 242
    invoke-static {v6, v8}, Lcom/samsung/swift/service/messaging/SMSPlugin;->buildSKTMessage(Landroid/database/Cursor;Ljava/util/Map;)Lcom/samsung/swift/service/messaging/Message;

    move-result-object v7

    .line 250
    .local v7, m:Lcom/samsung/swift/service/messaging/Message;
    :goto_4e
    sget-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->phoneNumberCache:Lcom/samsung/swift/service/phonebook/PhoneNumberCache;

    invoke-virtual {v2, v8}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->populateMessageList(Ljava/util/Map;)I

    .line 256
    if-eqz v6, :cond_3a

    goto :goto_37

    .line 246
    .end local v7           #m:Lcom/samsung/swift/service/messaging/Message;
    :cond_56
    invoke-static {v6, v8}, Lcom/samsung/swift/service/messaging/SMSPlugin;->buildMessage(Landroid/database/Cursor;Ljava/util/Map;)Lcom/samsung/swift/service/messaging/Message;
    :try_end_59
    .catchall {:try_start_3b .. :try_end_59} :catchall_5b

    move-result-object v7

    .restart local v7       #m:Lcom/samsung/swift/service/messaging/Message;
    goto :goto_4e

    .line 256
    .end local v7           #m:Lcom/samsung/swift/service/messaging/Message;
    .end local v8           #phoneNumberMessages:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;>;"
    :catchall_5b
    move-exception v2

    if-eqz v6, :cond_61

    .line 258
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_61
    throw v2
.end method

.method private static getContentResolver()Landroid/content/ContentResolver;
    .registers 1

    .prologue
    .line 204
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUri()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1919
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    .line 1920
    sget-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->_contentUri:Ljava/lang/String;

    return-object v0
.end method

.method public static getLatestIncomingSmsId()I
    .registers 9

    .prologue
    const/4 v8, 0x0

    .line 755
    const/4 v3, 0x0

    .line 756
    .local v3, whereClause:Ljava/lang/String;
    const/4 v5, 0x0

    .line 757
    .local v5, sortClause:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 759
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 760
    .local v1, u:Landroid/net/Uri;
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 762
    const-string v3, "SubType = 0 AND MainType in(0,10)"

    .line 763
    const-string v5, "RegTime DESC"

    .line 771
    :goto_19
    const/4 v6, 0x0

    .line 773
    .local v6, c:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_1c
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 775
    if-eqz v6, :cond_62

    .line 777
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_69

    move-result v2

    if-nez v2, :cond_34

    .line 803
    if-eqz v6, :cond_2d

    .line 804
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2d
    move v2, v8

    .line 799
    :cond_2e
    :goto_2e
    return v2

    .line 767
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2f
    const-string v3, "type = 1"

    .line 768
    const-string v5, "date DESC"

    goto :goto_19

    .line 781
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_34
    :try_start_34
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 783
    const-string v2, "RootID"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_69

    move-result-object v7

    .line 789
    .local v7, id:Ljava/lang/String;
    :goto_44
    if-nez v7, :cond_58

    .line 803
    if-eqz v6, :cond_4b

    .line 804
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4b
    move v2, v8

    .line 791
    goto :goto_2e

    .line 786
    .end local v7           #id:Ljava/lang/String;
    :cond_4d
    :try_start_4d
    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #id:Ljava/lang/String;
    goto :goto_44

    .line 794
    :cond_58
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_69

    move-result v2

    .line 803
    if-eqz v6, :cond_2e

    .line 804
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2e

    .line 803
    .end local v7           #id:Ljava/lang/String;
    :cond_62
    if-eqz v6, :cond_67

    .line 804
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_67
    move v2, v8

    .line 799
    goto :goto_2e

    .line 803
    :catchall_69
    move-exception v2

    if-eqz v6, :cond_6f

    .line 804
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 803
    :cond_6f
    throw v2
.end method

.method private static getPhoneNumberByNames([Ljava/lang/String;)Ljava/util/Set;
    .registers 15
    .parameter "names"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1714
    const/4 v7, 0x0

    .line 1716
    .local v7, dataCursor:Landroid/database/Cursor;
    new-instance v11, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v11, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1718
    .local v11, pns:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1725
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1727
    .local v12, sb:Ljava/lang/StringBuffer;
    new-instance v13, Ljava/util/Vector;

    array-length v1, p0

    invoke-direct {v13, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1729
    .local v13, selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1731
    .local v6, count:I
    const-string v1, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND ("

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1733
    const/4 v8, 0x0

    .local v8, i:I
    :goto_21
    array-length v1, p0

    if-ge v8, v1, :cond_51

    .line 1735
    if-lez v8, :cond_2b

    .line 1736
    const-string v1, " OR "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1738
    :cond_2b
    const-string v1, "display_name like ?"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1733
    add-int/lit8 v8, v8, 0x1

    goto :goto_21

    .line 1742
    :cond_51
    const-string v1, ")"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1744
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1749
    .local v3, likeClause:Ljava/lang/String;
    :try_start_5a
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1"

    aput-object v5, v2, v4

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1751
    if-eqz v7, :cond_a8

    .line 1753
    const-string v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1755
    .local v10, numberCol:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_91

    .line 1757
    new-instance v11, Ljava/util/HashSet;

    .end local v11           #pns:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {v11, v1}, Ljava/util/HashSet;-><init>(I)V
    :try_end_8b
    .catchall {:try_start_5a .. :try_end_8b} :catchall_ab

    .line 1776
    if-eqz v7, :cond_90

    .line 1778
    .end local v10           #numberCol:I
    :goto_8d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1782
    :cond_90
    return-object v11

    .line 1762
    .restart local v10       #numberCol:I
    .restart local v11       #pns:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_91
    :try_start_91
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1764
    .local v9, number:Ljava/lang/String;
    if-eqz v9, :cond_a2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a2

    .line 1766
    invoke-virtual {v11, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1768
    add-int/lit8 v6, v6, 0x1

    .line 1771
    :cond_a2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_a5
    .catchall {:try_start_91 .. :try_end_a5} :catchall_ab

    move-result v1

    if-nez v1, :cond_91

    .line 1776
    .end local v9           #number:Ljava/lang/String;
    .end local v10           #numberCol:I
    :cond_a8
    if-eqz v7, :cond_90

    goto :goto_8d

    .end local v11           #pns:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_ab
    move-exception v1

    if-eqz v7, :cond_b1

    .line 1778
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1776
    :cond_b1
    throw v1
.end method

.method private static insertMessage(Lcom/samsung/swift/service/messaging/Message;)Ljava/lang/String;
    .registers 16
    .parameter "m"

    .prologue
    const/4 v2, 0x0

    const/4 v14, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1018
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1020
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1023
    .local v13, values:Landroid/content/ContentValues;
    const-string v7, ""

    .line 1025
    .local v7, id:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    move-result v1

    if-eqz v1, :cond_164

    .line 1027
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->folderId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 1029
    const-string v1, "MainType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1046
    :cond_2c
    :goto_2c
    const-string v1, "SubType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1047
    const-string v1, "DetailType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1048
    const-string v1, "Title"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->body()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string v1, "MDN1st"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1053
    .local v10, phoneNumberMessages:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;>;"
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/swift/service/phonebook/PhoneNumber;->fromString(Ljava/lang/String;)Lcom/samsung/swift/service/phonebook/PhoneNumber;

    move-result-object v11

    .line 1054
    .local v11, pn:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    if-eqz v11, :cond_6f

    .line 1056
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    .local v9, messages:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    invoke-interface {v9, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v1, Lcom/samsung/swift/service/messaging/SMSPlugin;->phoneNumberCache:Lcom/samsung/swift/service/phonebook/PhoneNumberCache;

    invoke-virtual {v1, v10}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->populateMessageList(Ljava/util/Map;)I

    .line 1063
    .end local v9           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;"
    :cond_6f
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destinationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_132

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destinationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_132

    .line 1065
    const-string v1, "Display"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destinationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    :goto_8c
    const-string v1, "RegTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1072
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 1074
    .local v12, resultUri:Landroid/net/Uri;
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, ""

    const-string v5, "RegTime DESC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1077
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_161

    .line 1079
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_144

    .line 1081
    const-string v1, "RootID"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1082
    if-eqz v7, :cond_13d

    .line 1085
    invoke-virtual {p0, v7}, Lcom/samsung/swift/service/messaging/Message;->setId(Ljava/lang/String;)V

    move-object v8, v7

    .line 1132
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v7           #id:Ljava/lang/String;
    .end local v10           #phoneNumberMessages:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;>;"
    .end local v11           #pn:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    .local v8, id:Ljava/lang/String;
    :goto_ce
    return-object v8

    .line 1031
    .end local v8           #id:Ljava/lang/String;
    .end local v12           #resultUri:Landroid/net/Uri;
    .restart local v7       #id:Ljava/lang/String;
    :cond_cf
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->folderId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 1033
    const-string v1, "MainType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2c

    .line 1035
    :cond_e8
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->folderId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 1037
    const-string v1, "MainType"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1038
    const-string v1, "Status"

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2c

    .line 1040
    :cond_10d
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->folderId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1042
    const-string v1, "MainType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1043
    const-string v1, "Status"

    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2c

    .line 1068
    .restart local v10       #phoneNumberMessages:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;>;"
    .restart local v11       #pn:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    :cond_132
    const-string v1, "Display"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8c

    .line 1090
    .restart local v6       #cur:Landroid/database/Cursor;
    .restart local v12       #resultUri:Landroid/net/Uri;
    :cond_13d
    sget-object v1, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, ">>>>>>>>>>>>>>>>>> Still NULL "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_144
    if-eqz v6, :cond_149

    .line 1095
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1123
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v10           #phoneNumberMessages:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;>;"
    .end local v11           #pn:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    :cond_149
    :goto_149
    if-eqz v12, :cond_1d4

    .line 1125
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1126
    const/16 v1, 0x2f

    invoke-virtual {v7, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1127
    invoke-virtual {p0, v7}, Lcom/samsung/swift/service/messaging/Message;->setId(Ljava/lang/String;)V

    move-object v8, v7

    .line 1128
    .end local v7           #id:Ljava/lang/String;
    .restart local v8       #id:Ljava/lang/String;
    goto/16 :goto_ce

    .end local v8           #id:Ljava/lang/String;
    .restart local v6       #cur:Landroid/database/Cursor;
    .restart local v7       #id:Ljava/lang/String;
    .restart local v10       #phoneNumberMessages:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;>;"
    .restart local v11       #pn:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    :cond_161
    move-object v8, v7

    .line 1100
    .end local v7           #id:Ljava/lang/String;
    .restart local v8       #id:Ljava/lang/String;
    goto/16 :goto_ce

    .line 1105
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v8           #id:Ljava/lang/String;
    .end local v10           #phoneNumberMessages:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;>;"
    .end local v11           #pn:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    .end local v12           #resultUri:Landroid/net/Uri;
    .restart local v7       #id:Ljava/lang/String;
    :cond_164
    const-string v1, "body"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->body()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    const-string v1, "thread_id"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->threadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    const-string v1, "read"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->isRead()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1108
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->folderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const-string v1, "address"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1111
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->isDualSim()Z

    move-result v1

    if-eqz v1, :cond_1bd

    .line 1113
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->network()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gsm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ca

    .line 1114
    const-string v1, "band"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1119
    :cond_1bd
    :goto_1bd
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .restart local v12       #resultUri:Landroid/net/Uri;
    goto :goto_149

    .line 1116
    .end local v12           #resultUri:Landroid/net/Uri;
    :cond_1ca
    const-string v1, "band"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1bd

    .restart local v12       #resultUri:Landroid/net/Uri;
    :cond_1d4
    move-object v8, v7

    .line 1132
    .end local v7           #id:Ljava/lang/String;
    .restart local v8       #id:Ljava/lang/String;
    goto/16 :goto_ce
.end method

.method public static declared-synchronized invalidateCache()V
    .registers 3

    .prologue
    .line 175
    const-class v1, Lcom/samsung/swift/service/messaging/SMSPlugin;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->monitor:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    .line 177
    :try_start_6
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->calcRandomRevision()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->revision:Ljava/lang/String;

    .line 178
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_f

    .line 179
    monitor-exit v1

    return-void

    .line 178
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    :try_start_11
    throw v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    .line 175
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isKorean()Z
    .registers 5

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x0

    .line 1926
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1928
    .local v0, model:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_1b

    .line 1930
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1932
    .local v1, modelPre:Ljava/lang/String;
    const-string v3, "shw-m"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1934
    const/4 v2, 0x1

    .line 1938
    .end local v1           #modelPre:Ljava/lang/String;
    :cond_1b
    return v2
.end method

.method public static isSKT()Z
    .registers 9

    .prologue
    const/4 v8, 0x1

    .line 1856
    sget-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->_isSKT:Ljava/lang/Boolean;

    if-eqz v2, :cond_c

    .line 1858
    sget-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->_isSKT:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1914
    .local v0, cr:Landroid/content/ContentResolver;
    .local v1, u:Landroid/net/Uri;
    .local v6, c:Landroid/database/Cursor;
    :goto_b
    return v2

    .line 1863
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #u:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_c
    const-string v2, "content://sms"

    sput-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->_contentUri:Ljava/lang/String;

    .line 1865
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1866
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1869
    .restart local v6       #c:Landroid/database/Cursor;
    const-string v2, "content://com.sec.mms.provider/message"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1871
    .restart local v1       #u:Landroid/net/Uri;
    :try_start_1b
    sget-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSKT: querying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1873
    if-eqz v6, :cond_147

    .line 1875
    sget-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSKT: found working content provider at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " so using that"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->_isSKT:Ljava/lang/Boolean;

    .line 1877
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->_contentUri:Ljava/lang/String;
    :try_end_6d
    .catchall {:try_start_1b .. :try_end_6d} :catchall_fc
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_6d} :catch_74

    .line 1887
    if-eqz v6, :cond_72

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_72
    move v2, v8

    .line 1878
    goto :goto_b

    .line 1881
    :catch_74
    move-exception v7

    .line 1883
    .local v7, e:Ljava/lang/Exception;
    :try_start_75
    sget-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSKT: exception querying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " so it\'s probably not that..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_75 .. :try_end_97} :catchall_fc

    .line 1887
    if-eqz v6, :cond_9c

    .end local v7           #e:Ljava/lang/Exception;
    :goto_99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1890
    :cond_9c
    const-string v2, "content://sec.message.mms-sms/mdn_list"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1892
    :try_start_a2
    sget-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSKT: querying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1894
    if-eqz v6, :cond_144

    .line 1896
    sget-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSKT: found working content provider at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " so using that"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->_isSKT:Ljava/lang/Boolean;

    .line 1898
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->_contentUri:Ljava/lang/String;
    :try_end_f4
    .catchall {:try_start_a2 .. :try_end_f4} :catchall_13d
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_f4} :catch_103

    .line 1908
    if-eqz v6, :cond_f9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f9
    move v2, v8

    .line 1899
    goto/16 :goto_b

    .line 1887
    :catchall_fc
    move-exception v2

    if-eqz v6, :cond_102

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_102
    throw v2

    .line 1902
    :catch_103
    move-exception v7

    .line 1904
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_104
    sget-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSKT: exception querying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " so it\'s probably not that..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catchall {:try_start_104 .. :try_end_126} :catchall_13d

    .line 1908
    if-eqz v6, :cond_12b

    .end local v7           #e:Ljava/lang/Exception;
    :goto_128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1911
    :cond_12b
    sget-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "isSKT: failed to find samsung SMS content providers, falling back on content://sms"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    const-string v2, "content://sms"

    sput-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->_contentUri:Ljava/lang/String;

    .line 1913
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->_isSKT:Ljava/lang/Boolean;

    .line 1914
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 1908
    :catchall_13d
    move-exception v2

    if-eqz v6, :cond_143

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_143
    throw v2

    :cond_144
    if-eqz v6, :cond_12b

    goto :goto_128

    .line 1887
    :cond_147
    if-eqz v6, :cond_9c

    goto/16 :goto_99
.end method

.method private static joinArray([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;
    .registers 8
    .parameter "array"
    .parameter "delimiter"
    .parameter "quotechar"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p3, selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1793
    array-length v2, p0

    if-nez v2, :cond_7

    .line 1794
    const-string v2, ""

    .line 1819
    :goto_6
    return-object v2

    .line 1796
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1797
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1798
    if-eqz p3, :cond_3a

    .line 1799
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1800
    aget-object v2, p0, v3

    invoke-virtual {p3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1805
    :goto_1b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1806
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1f
    array-length v2, p0

    if-ge v1, v2, :cond_46

    .line 1808
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1809
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1810
    if-eqz p3, :cond_40

    .line 1811
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1812
    aget-object v2, p0, v1

    invoke-virtual {p3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1817
    :goto_34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1806
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1803
    .end local v1           #i:I
    :cond_3a
    aget-object v2, p0, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 1815
    .restart local v1       #i:I
    :cond_40
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_34

    .line 1819
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6
.end method

.method private static pluginLoading()V
    .registers 2

    .prologue
    .line 1848
    invoke-static {}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->instance()Lcom/samsung/swift/contentobserver/ContentObserverFactory;

    move-result-object v0

    const-class v1, Lcom/samsung/swift/service/messaging/SMSContentObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->get(Ljava/lang/Class;)Lcom/samsung/swift/contentobserver/SwiftContentObserver;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/service/messaging/SMSContentObserver;

    sput-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->smsObserver:Lcom/samsung/swift/service/messaging/SMSContentObserver;

    .line 1849
    invoke-static {}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->instance()Lcom/samsung/swift/contentobserver/ContentObserverFactory;

    move-result-object v0

    const-class v1, Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->get(Ljava/lang/Class;)Lcom/samsung/swift/contentobserver/SwiftContentObserver;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

    sput-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->pbSmsObserver:Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

    .line 1851
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->instance()Lcom/samsung/swift/service/phonebook/PhoneNumberCache;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->phoneNumberCache:Lcom/samsung/swift/service/phonebook/PhoneNumberCache;

    .line 1852
    return-void
.end method

.method private static pluginUnloading()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1838
    sput-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->smsObserver:Lcom/samsung/swift/service/messaging/SMSContentObserver;

    .line 1839
    sput-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->pbSmsObserver:Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

    .line 1840
    sput-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->phoneNumberCache:Lcom/samsung/swift/service/phonebook/PhoneNumberCache;

    .line 1841
    sget-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->garbageCollectPeers()V

    .line 1842
    return-void
.end method

.method private static remove(Ljava/lang/String;)Z
    .registers 9
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1366
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_25

    .line 1374
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1376
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1378
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "RootID = ?"

    new-array v7, v3, [Ljava/lang/String;

    aput-object p0, v7, v4

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1380
    .local v2, result:I
    if-lez v2, :cond_4d

    .line 1393
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #result:I
    :cond_24
    :goto_24
    return v3

    .line 1368
    :catch_25
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move v3, v4

    .line 1371
    goto :goto_24

    .line 1388
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_24

    :cond_4d
    move v3, v4

    .line 1393
    goto :goto_24
.end method

.method private static revision()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 186
    invoke-static {}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->invalidateCache()V

    .line 187
    sget-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v1, "Invalidating Telephony DB cache to force a call log portlet refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->invalidateCache()V

    .line 190
    :cond_13
    sget-object v1, Lcom/samsung/swift/service/messaging/SMSPlugin;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_16
    sget-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->revision:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 193
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private static search(Lcom/samsung/swift/util/SearchQueryFilter;III)Lcom/samsung/swift/service/messaging/MessageList;
    .registers 41
    .parameter "sqf"
    .parameter "startIndex"
    .parameter "maxResponses"
    .parameter "sort"

    .prologue
    .line 266
    const/16 v18, 0x0

    .line 267
    .local v18, listSize:I
    new-instance v19, Lcom/samsung/swift/service/messaging/MessageList;

    invoke-direct/range {v19 .. v19}, Lcom/samsung/swift/service/messaging/MessageList;-><init>()V

    .line 269
    .local v19, ml:Lcom/samsung/swift/service/messaging/MessageList;
    if-nez p2, :cond_a

    .line 744
    .end local v19           #ml:Lcom/samsung/swift/service/messaging/MessageList;
    :cond_9
    :goto_9
    return-object v19

    .line 274
    .restart local v19       #ml:Lcom/samsung/swift/service/messaging/MessageList;
    :cond_a
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 276
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v35, Ljava/lang/StringBuffer;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuffer;-><init>()V

    .line 278
    .local v35, whereClause:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 279
    .local v3, u:Landroid/net/Uri;
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 281
    const-string v4, "SubType = 0 "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :cond_28
    new-instance v27, Ljava/util/Vector;

    invoke-direct/range {v27 .. v27}, Ljava/util/Vector;-><init>()V

    .line 291
    .local v27, selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    sget v4, Lcom/samsung/swift/util/SearchQueryFilter;->folderId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 292
    .local v15, folderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/swift/service/messaging/SMSPlugin;->arrayIsNumeric([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 293
    sget-object v4, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v5, "Java Message.Search: non-numeric folderId specified"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v19, Lcom/samsung/swift/service/messaging/MessageList;

    .end local v19           #ml:Lcom/samsung/swift/service/messaging/MessageList;
    invoke-direct/range {v19 .. v19}, Lcom/samsung/swift/service/messaging/MessageList;-><init>()V

    goto :goto_9

    .line 296
    .restart local v19       #ml:Lcom/samsung/swift/service/messaging/MessageList;
    :cond_5a
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_165

    .line 305
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 306
    .local v22, outbox:Ljava/lang/String;
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    .line 307
    .local v25, queued:Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 308
    .local v14, failed:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_80

    .line 310
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_80
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    move-result v4

    if-eqz v4, :cond_13c

    .line 316
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v32, specialFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, " AND "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    const-string v4, "MainType in("

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_105

    .line 322
    const-string v4, "0"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    const-string v4, "10"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_b3
    :goto_b3
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string v5, ","

    const-string v6, ""

    const/16 v36, 0x0

    move-object/from16 v0, v36

    invoke-static {v4, v5, v6, v0}, Lcom/samsung/swift/service/messaging/SMSPlugin;->joinArray([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    const-string v4, ")"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e9

    .line 353
    const-string v4, " AND Status in (200,201,202,203,204)"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    .end local v14           #failed:Ljava/lang/String;
    .end local v22           #outbox:Ljava/lang/String;
    .end local v25           #queued:Ljava/lang/String;
    .end local v32           #specialFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e9
    :goto_e9
    sget v4, Lcom/samsung/swift/util/SearchQueryFilter;->threadId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v33

    .line 400
    .local v33, threadIdArray:[Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/samsung/swift/service/messaging/SMSPlugin;->arrayIsNumeric([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1ff

    .line 401
    sget-object v4, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v5, "Java Message.Search: non-numeric threadId specified"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v19, Lcom/samsung/swift/service/messaging/MessageList;

    .end local v19           #ml:Lcom/samsung/swift/service/messaging/MessageList;
    invoke-direct/range {v19 .. v19}, Lcom/samsung/swift/service/messaging/MessageList;-><init>()V

    goto/16 :goto_9

    .line 325
    .end local v33           #threadIdArray:[Ljava/lang/String;
    .restart local v14       #failed:Ljava/lang/String;
    .restart local v19       #ml:Lcom/samsung/swift/service/messaging/MessageList;
    .restart local v22       #outbox:Ljava/lang/String;
    .restart local v25       #queued:Ljava/lang/String;
    .restart local v32       #specialFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_105
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_120

    .line 327
    const-string v4, "1"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    const-string v4, "11"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    .line 337
    :cond_120
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_b3

    .line 339
    const-string v4, "1"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v4, "11"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b3

    .line 359
    .end local v32           #specialFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13c
    const-string v4, "type in("

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string v5, ","

    const-string v6, ""

    const/16 v36, 0x0

    move-object/from16 v0, v36

    invoke-static {v4, v5, v6, v0}, Lcom/samsung/swift/service/messaging/SMSPlugin;->joinArray([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    const-string v4, ")"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e9

    .line 367
    .end local v14           #failed:Ljava/lang/String;
    .end local v22           #outbox:Ljava/lang/String;
    .end local v25           #queued:Ljava/lang/String;
    :cond_165
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .restart local v32       #specialFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    move-result v4

    if-eqz v4, :cond_1bf

    .line 371
    const-string v4, " AND "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    const-string v4, "MainType in("

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    const-string v4, "0"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v4, "1"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    const-string v4, "10"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    const-string v4, "11"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string v5, ","

    const-string v6, ""

    const/16 v36, 0x0

    move-object/from16 v0, v36

    invoke-static {v4, v5, v6, v0}, Lcom/samsung/swift/service/messaging/SMSPlugin;->joinArray([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    const-string v4, ")"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e9

    .line 385
    :cond_1bf
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isKorean()Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 389
    const-string v4, "type in("

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    const-string v4, "1"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    const-string v4, "2"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string v5, ","

    const-string v6, ""

    const/16 v36, 0x0

    move-object/from16 v0, v36

    invoke-static {v4, v5, v6, v0}, Lcom/samsung/swift/service/messaging/SMSPlugin;->joinArray([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const-string v4, ")"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e9

    .line 404
    .end local v32           #specialFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v33       #threadIdArray:[Ljava/lang/String;
    :cond_1ff
    move-object/from16 v0, v33

    array-length v4, v0

    if-lez v4, :cond_243

    .line 407
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    move-result v4

    if-eqz v4, :cond_218

    .line 409
    sget-object v4, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v5, "Java Message.Search: SKT DOESN\'T SUPPORT THREADID YET"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v19, Lcom/samsung/swift/service/messaging/MessageList;

    .end local v19           #ml:Lcom/samsung/swift/service/messaging/MessageList;
    invoke-direct/range {v19 .. v19}, Lcom/samsung/swift/service/messaging/MessageList;-><init>()V

    goto/16 :goto_9

    .line 413
    .restart local v19       #ml:Lcom/samsung/swift/service/messaging/MessageList;
    :cond_218
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_225

    .line 414
    const-string v4, " AND "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    :cond_225
    const-string v4, "thread_id in("

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    const-string v4, ","

    const-string v5, ""

    const/4 v6, 0x0

    move-object/from16 v0, v33

    invoke-static {v0, v4, v5, v6}, Lcom/samsung/swift/service/messaging/SMSPlugin;->joinArray([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    const-string v4, ")"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    :cond_243
    sget v4, Lcom/samsung/swift/util/SearchQueryFilter;->source:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v31

    .line 423
    .local v31, sourceList:[Ljava/lang/String;
    sget v4, Lcom/samsung/swift/util/SearchQueryFilter;->destination:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v13

    .line 425
    .local v13, destList:[Ljava/lang/String;
    move-object/from16 v0, v31

    array-length v4, v0

    if-gtz v4, :cond_25b

    array-length v4, v13

    if-lez v4, :cond_2a5

    .line 427
    :cond_25b
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2dc

    .line 429
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 430
    .local v28, singleFolder:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 432
    .local v9, clause:Ljava/lang/StringBuffer;
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c1

    .line 433
    move-object/from16 v0, v31

    array-length v4, v0

    if-lez v4, :cond_293

    .line 436
    const-string v4, "(address in("

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    const-string v4, ","

    const-string v5, "\""

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-static {v0, v4, v5, v1}, Lcom/samsung/swift/service/messaging/SMSPlugin;->joinArray([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    const-string v4, "))"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    :cond_293
    :goto_293
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2a0

    .line 451
    const-string v4, " AND "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    :cond_2a0
    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 492
    .end local v9           #clause:Ljava/lang/StringBuffer;
    .end local v28           #singleFolder:Ljava/lang/String;
    :cond_2a5
    :goto_2a5
    sget v4, Lcom/samsung/swift/util/SearchQueryFilter;->sourceContactId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v30

    .line 493
    .local v30, sourceContactIdList:[Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/samsung/swift/service/messaging/SMSPlugin;->arrayIsNumeric([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35d

    .line 494
    sget-object v4, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v5, "Java Message.Search: non-numeric source contact ID specified"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v19, Lcom/samsung/swift/service/messaging/MessageList;

    .end local v19           #ml:Lcom/samsung/swift/service/messaging/MessageList;
    invoke-direct/range {v19 .. v19}, Lcom/samsung/swift/service/messaging/MessageList;-><init>()V

    goto/16 :goto_9

    .line 442
    .end local v30           #sourceContactIdList:[Ljava/lang/String;
    .restart local v9       #clause:Ljava/lang/StringBuffer;
    .restart local v19       #ml:Lcom/samsung/swift/service/messaging/MessageList;
    .restart local v28       #singleFolder:Ljava/lang/String;
    :cond_2c1
    array-length v4, v13

    if-lez v4, :cond_293

    .line 444
    const-string v4, "(address in("

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    const-string v4, ","

    const-string v5, ""

    move-object/from16 v0, v27

    invoke-static {v13, v4, v5, v0}, Lcom/samsung/swift/service/messaging/SMSPlugin;->joinArray([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    const-string v4, "))"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_293

    .line 458
    .end local v9           #clause:Ljava/lang/StringBuffer;
    .end local v28           #singleFolder:Ljava/lang/String;
    :cond_2dc
    const/4 v11, 0x0

    .local v11, destClause:Ljava/lang/StringBuffer;
    const/16 v29, 0x0

    .line 460
    .local v29, sourceClause:Ljava/lang/StringBuffer;
    move-object/from16 v0, v31

    array-length v4, v0

    if-lez v4, :cond_305

    .line 463
    new-instance v29, Ljava/lang/StringBuffer;

    .end local v29           #sourceClause:Ljava/lang/StringBuffer;
    const-string v4, "(type = 1 AND address in("

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 464
    .restart local v29       #sourceClause:Ljava/lang/StringBuffer;
    const-string v4, ","

    const-string v5, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-static {v0, v4, v5, v1}, Lcom/samsung/swift/service/messaging/SMSPlugin;->joinArray([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    const-string v4, "))"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    :cond_305
    array-length v4, v13

    if-lez v4, :cond_321

    .line 471
    new-instance v11, Ljava/lang/StringBuffer;

    .end local v11           #destClause:Ljava/lang/StringBuffer;
    const-string v4, "(type != 1 AND address in("

    invoke-direct {v11, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 472
    .restart local v11       #destClause:Ljava/lang/StringBuffer;
    const-string v4, ","

    const-string v5, ""

    move-object/from16 v0, v27

    invoke-static {v13, v4, v5, v0}, Lcom/samsung/swift/service/messaging/SMSPlugin;->joinArray([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    const-string v4, "))"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    :cond_321
    if-nez v11, :cond_325

    if-eqz v29, :cond_2a5

    .line 477
    :cond_325
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_332

    .line 478
    const-string v4, " AND "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 479
    :cond_332
    const-string v4, "("

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    if-eqz v11, :cond_340

    .line 481
    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 482
    :cond_340
    if-eqz v11, :cond_34b

    if-eqz v29, :cond_34b

    .line 483
    const-string v4, " OR "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    :cond_34b
    if-eqz v29, :cond_354

    .line 485
    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 486
    :cond_354
    const-string v4, ")"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2a5

    .line 497
    .end local v11           #destClause:Ljava/lang/StringBuffer;
    .end local v29           #sourceClause:Ljava/lang/StringBuffer;
    .restart local v30       #sourceContactIdList:[Ljava/lang/String;
    :cond_35d
    sget v4, Lcom/samsung/swift/util/SearchQueryFilter;->destinationContactId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v12

    .line 498
    .local v12, destContactIdList:[Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/swift/service/messaging/SMSPlugin;->arrayIsNumeric([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_379

    .line 499
    sget-object v4, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v5, "Java Message.Search: non-numeric destination Contact id specified"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v19, Lcom/samsung/swift/service/messaging/MessageList;

    .end local v19           #ml:Lcom/samsung/swift/service/messaging/MessageList;
    invoke-direct/range {v19 .. v19}, Lcom/samsung/swift/service/messaging/MessageList;-><init>()V

    goto/16 :goto_9

    .line 503
    .restart local v19       #ml:Lcom/samsung/swift/service/messaging/MessageList;
    :cond_379
    move-object/from16 v0, v30

    array-length v4, v0

    if-gtz v4, :cond_381

    array-length v4, v12

    if-lez v4, :cond_3ca

    .line 505
    :cond_381
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_468

    .line 507
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 508
    .restart local v28       #singleFolder:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 510
    .restart local v9       #clause:Ljava/lang/StringBuffer;
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_44d

    .line 511
    move-object/from16 v0, v30

    array-length v4, v0

    if-lez v4, :cond_3b8

    .line 514
    const-string v4, "(person in("

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    const-string v4, ","

    const-string v5, ""

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-static {v0, v4, v5, v6}, Lcom/samsung/swift/service/messaging/SMSPlugin;->joinArray([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    const-string v4, "))"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 528
    :cond_3b8
    :goto_3b8
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_3c5

    .line 529
    const-string v4, " AND "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    :cond_3c5
    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 569
    .end local v9           #clause:Ljava/lang/StringBuffer;
    .end local v28           #singleFolder:Ljava/lang/String;
    :cond_3ca
    :goto_3ca
    sget v4, Lcom/samsung/swift/util/SearchQueryFilter;->Unqualified:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v34

    .line 574
    .local v34, unqArray:[Ljava/lang/String;
    move-object/from16 v0, v34

    array-length v4, v0

    if-lez v4, :cond_55d

    .line 576
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_3e4

    .line 577
    const-string v4, " AND "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    :cond_3e4
    const-string v4, "("

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    const/16 v16, 0x0

    .local v16, i:I
    :goto_3ed
    move-object/from16 v0, v34

    array-length v4, v0

    move/from16 v0, v16

    if-ge v0, v4, :cond_4f0

    .line 583
    if-lez v16, :cond_3fd

    .line 585
    const-string v4, " OR "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    :cond_3fd
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    move-result v4

    if-eqz v4, :cond_4e7

    .line 589
    const-string v4, "Title like ? OR MDN1st like ?"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 595
    :goto_40a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v34, v16

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 596
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v34, v16

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 581
    add-int/lit8 v16, v16, 0x1

    goto :goto_3ed

    .line 520
    .end local v16           #i:I
    .end local v34           #unqArray:[Ljava/lang/String;
    .restart local v9       #clause:Ljava/lang/StringBuffer;
    .restart local v28       #singleFolder:Ljava/lang/String;
    :cond_44d
    array-length v4, v12

    if-lez v4, :cond_3b8

    .line 522
    const-string v4, "(person in("

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    const-string v4, ","

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v12, v4, v5, v6}, Lcom/samsung/swift/service/messaging/SMSPlugin;->joinArray([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 524
    const-string v4, "))"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3b8

    .line 536
    .end local v9           #clause:Ljava/lang/StringBuffer;
    .end local v28           #singleFolder:Ljava/lang/String;
    :cond_468
    const/4 v11, 0x0

    .restart local v11       #destClause:Ljava/lang/StringBuffer;
    const/16 v29, 0x0

    .line 538
    .restart local v29       #sourceClause:Ljava/lang/StringBuffer;
    move-object/from16 v0, v30

    array-length v4, v0

    if-lez v4, :cond_490

    .line 541
    new-instance v29, Ljava/lang/StringBuffer;

    .end local v29           #sourceClause:Ljava/lang/StringBuffer;
    const-string v4, "(type = 1 AND person in("

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 542
    .restart local v29       #sourceClause:Ljava/lang/StringBuffer;
    const-string v4, ","

    const-string v5, ""

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-static {v0, v4, v5, v6}, Lcom/samsung/swift/service/messaging/SMSPlugin;->joinArray([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    const-string v4, "))"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    :cond_490
    array-length v4, v12

    if-lez v4, :cond_4ab

    .line 549
    new-instance v11, Ljava/lang/StringBuffer;

    .end local v11           #destClause:Ljava/lang/StringBuffer;
    const-string v4, "(type != 1 AND person in("

    invoke-direct {v11, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 550
    .restart local v11       #destClause:Ljava/lang/StringBuffer;
    const-string v4, ","

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v12, v4, v5, v6}, Lcom/samsung/swift/service/messaging/SMSPlugin;->joinArray([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    const-string v4, "))"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    :cond_4ab
    if-nez v11, :cond_4af

    if-eqz v29, :cond_3ca

    .line 555
    :cond_4af
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_4bc

    .line 556
    const-string v4, " AND "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    :cond_4bc
    const-string v4, "("

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    if-eqz v11, :cond_4ca

    .line 559
    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 560
    :cond_4ca
    if-eqz v11, :cond_4d5

    if-eqz v29, :cond_4d5

    .line 561
    const-string v4, " OR "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 562
    :cond_4d5
    if-eqz v29, :cond_4de

    .line 563
    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 564
    :cond_4de
    const-string v4, ")"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3ca

    .line 593
    .end local v11           #destClause:Ljava/lang/StringBuffer;
    .end local v29           #sourceClause:Ljava/lang/StringBuffer;
    .restart local v16       #i:I
    .restart local v34       #unqArray:[Ljava/lang/String;
    :cond_4e7
    const-string v4, "body like ? OR address like ?"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_40a

    .line 600
    :cond_4f0
    invoke-static/range {v34 .. v34}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getPhoneNumberByNames([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v24

    .line 602
    .local v24, phoneNumbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_556

    .line 605
    const/4 v10, 0x0

    .line 607
    .local v10, count:I
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4ff
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_556

    .line 609
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_512

    .line 611
    const-string v4, " OR "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    :cond_512
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    move-result v4

    if-eqz v4, :cond_54e

    .line 616
    const-string v4, "MDN1st LIKE ?"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    :goto_51f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 628
    .local v26, s:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 629
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 631
    add-int/lit8 v10, v10, 0x1

    .line 632
    goto :goto_4ff

    .line 620
    .end local v26           #s:Ljava/lang/String;
    :cond_54e
    const-string v4, "address LIKE ?"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_51f

    .line 635
    .end local v10           #count:I
    .end local v17           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_556
    const-string v4, ")"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 638
    .end local v16           #i:I
    .end local v24           #phoneNumbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_55d
    sget v4, Lcom/samsung/swift/util/SearchQueryFilter;->status:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v21

    .line 640
    .local v21, msgStatusArray:[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v4, v0

    if-lez v4, :cond_596

    const/4 v4, 0x0

    aget-object v4, v21, v4

    const-string v5, "new"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_596

    .line 642
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_582

    .line 643
    const-string v4, " AND "

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 645
    :cond_582
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    move-result v4

    if-eqz v4, :cond_683

    .line 647
    const-string v4, "Status = ?"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 649
    const-string v4, "1100"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_596
    :goto_596
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_697

    .line 663
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    move-result v4

    if-eqz v4, :cond_693

    .line 665
    const-string v7, "RegTime DESC"

    .line 676
    .local v7, sortClause:Ljava/lang/String;
    :goto_5a3
    const/4 v8, 0x0

    .line 679
    .local v8, c:Landroid/database/Cursor;
    :try_start_5a4
    sget-object v4, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v5, "*******************************************************************************"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    sget-object v4, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying URI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    sget-object v4, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WhereClause : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    sget-object v4, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SortClause : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v4, 0x0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 686
    if-eqz v8, :cond_6b0

    .line 688
    sget-object v4, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total Count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    sget-object v4, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v5, "*******************************************************************************"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    move/from16 v0, p1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 708
    new-instance v23, Ljava/util/LinkedHashMap;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 710
    .local v23, phoneNumberMessages:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_66c

    .line 712
    :goto_64f
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_66c

    .line 715
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    move-result v4

    if-eqz v4, :cond_69e

    .line 717
    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lcom/samsung/swift/service/messaging/SMSPlugin;->buildSKTMessage(Landroid/database/Cursor;Ljava/util/Map;)Lcom/samsung/swift/service/messaging/Message;

    move-result-object v20

    .line 724
    .local v20, msg:Lcom/samsung/swift/service/messaging/Message;
    :goto_661
    invoke-virtual/range {v19 .. v20}, Lcom/samsung/swift/service/messaging/MessageList;->add(Lcom/samsung/swift/service/messaging/Message;)V

    .line 726
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move/from16 v1, p2

    if-lt v0, v1, :cond_6a5

    .line 736
    .end local v20           #msg:Lcom/samsung/swift/service/messaging/Message;
    :cond_66c
    sget-object v4, Lcom/samsung/swift/service/messaging/SMSPlugin;->phoneNumberCache:Lcom/samsung/swift/service/phonebook/PhoneNumberCache;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->populateMessageList(Ljava/util/Map;)I

    .line 738
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/messaging/MessageList;->setEstimatedResultSize(I)V
    :try_end_67c
    .catchall {:try_start_5a4 .. :try_end_67c} :catchall_6a9

    .line 748
    if-eqz v8, :cond_9

    .line 749
    .end local v23           #phoneNumberMessages:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;>;"
    :goto_67e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9

    .line 653
    .end local v7           #sortClause:Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_683
    const-string v4, "read = ?"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 655
    const-string v4, "0"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_596

    .line 669
    :cond_693
    const-string v7, "date DESC"

    .restart local v7       #sortClause:Ljava/lang/String;
    goto/16 :goto_5a3

    .line 673
    .end local v7           #sortClause:Ljava/lang/String;
    :cond_697
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .restart local v7       #sortClause:Ljava/lang/String;
    goto/16 :goto_5a3

    .line 721
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v23       #phoneNumberMessages:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;>;"
    :cond_69e
    :try_start_69e
    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lcom/samsung/swift/service/messaging/SMSPlugin;->buildMessage(Landroid/database/Cursor;Ljava/util/Map;)Lcom/samsung/swift/service/messaging/Message;

    move-result-object v20

    .restart local v20       #msg:Lcom/samsung/swift/service/messaging/Message;
    goto :goto_661

    .line 731
    :cond_6a5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6a8
    .catchall {:try_start_69e .. :try_end_6a8} :catchall_6a9

    goto :goto_64f

    .line 748
    .end local v20           #msg:Lcom/samsung/swift/service/messaging/Message;
    .end local v23           #phoneNumberMessages:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/messaging/Message;>;>;"
    :catchall_6a9
    move-exception v4

    if-eqz v8, :cond_6af

    .line 749
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 748
    :cond_6af
    throw v4

    :cond_6b0
    if-eqz v8, :cond_9

    goto :goto_67e
.end method

.method private static send(Lcom/samsung/swift/service/messaging/Message;)Z
    .registers 4
    .parameter "m"

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    .line 988
    const/4 v1, 0x0

    .line 1011
    :goto_b
    return v1

    .line 992
    :cond_c
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 994
    invoke-static {p0}, Lcom/samsung/swift/service/messaging/SMSPlugin;->SendKoreanMessage(Lcom/samsung/swift/service/messaging/Message;)Z

    move-result v1

    goto :goto_b

    .line 999
    :cond_17
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/swift/service/messaging/Message;->setFolderId(Ljava/lang/String;)V

    .line 1002
    invoke-static {p0}, Lcom/samsung/swift/service/messaging/SMSPlugin;->insertMessage(Lcom/samsung/swift/service/messaging/Message;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, id:Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2c

    .line 1006
    invoke-static {p0}, Lcom/samsung/swift/service/messaging/SMSPlugin;->addToCallLog(Lcom/samsung/swift/service/messaging/Message;)V

    .line 1009
    :cond_2c
    invoke-static {v0}, Lcom/samsung/swift/service/messaging/SMSPlugin;->send(Ljava/lang/String;)Z

    .line 1011
    const/4 v1, 0x1

    goto :goto_b
.end method

.method private static send(Ljava/lang/String;)Z
    .registers 16
    .parameter "id"

    .prologue
    .line 813
    invoke-static {p0}, Lcom/samsung/swift/service/messaging/SMSPlugin;->get(Ljava/lang/String;)Lcom/samsung/swift/service/messaging/Message;

    move-result-object v10

    .line 814
    .local v10, m:Lcom/samsung/swift/service/messaging/Message;
    if-nez v10, :cond_8

    .line 816
    const/4 v0, 0x0

    .line 879
    :goto_7
    return v0

    .line 822
    :cond_8
    new-instance v13, Landroid/content/Intent;

    const-string v0, "com.samsung.swift.service.messaging.SMS_SENT"

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 823
    .local v13, sentIntent:Landroid/content/Intent;
    const-string v0, "id"

    invoke-virtual {v13, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x4000

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 825
    .local v11, pi:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    sget-object v1, Lcom/samsung/swift/service/messaging/SMSPlugin;->confirmationReceiver:Lcom/samsung/swift/service/messaging/ConfirmationReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "com.samsung.swift.service.messaging.SMS_SENT"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/swift/service/SwiftService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 827
    invoke-virtual {v10}, Lcom/samsung/swift/service/messaging/Message;->body()Ljava/lang/String;

    move-result-object v6

    .line 830
    .local v6, body:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3e

    .line 831
    const-string v6, " "

    .line 835
    :cond_3e
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 836
    .local v3, messageParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v4, intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 838
    .local v12, s:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 840
    .end local v12           #s:Ljava/lang/String;
    :cond_60
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 842
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->isDualSim()Z

    move-result v0

    if-eqz v0, :cond_1d8

    .line 844
    invoke-virtual {v10}, Lcom/samsung/swift/service/messaging/Message;->network()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c2

    .line 847
    :try_start_7b
    sget-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v1, "send: Dual-sim sending via GSM"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->hasWCDMA()Z

    move-result v0

    if-eqz v0, :cond_121

    .line 850
    sget-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v1, "send: Special case for dual-sim GT-B9062"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const-string v0, "android.telephony.SmsManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 854
    .local v7, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v0, "sendMultipartTextMessage"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-class v5, Ljava/util/ArrayList;

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-class v5, Ljava/util/ArrayList;

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-class v5, Ljava/util/ArrayList;

    aput-object v5, v1, v2

    const/4 v2, 0x5

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v2

    const/4 v2, 0x6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v2

    const/4 v2, 0x7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v2

    const/16 v2, 0x8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v2

    const/16 v2, 0x9

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v2

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 855
    .local v14, smptm:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v10}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x1

    const/4 v5, 0x0

    aput-object v5, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const/4 v5, 0x0

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const/16 v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x9

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    .end local v7           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v14           #smptm:Ljava/lang/reflect/Method;
    :goto_11e
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 860
    :cond_121
    const-string v0, "android.telephony.SmsManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 861
    .restart local v7       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v0, "sendMultipartTextMessage"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-class v5, Ljava/util/ArrayList;

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-class v5, Ljava/util/ArrayList;

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-class v5, Ljava/util/ArrayList;

    aput-object v5, v1, v2

    const/4 v2, 0x5

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v2

    const/4 v2, 0x6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v2

    const/4 v2, 0x7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v2

    const/16 v2, 0x8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v2

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 862
    .restart local v14       #smptm:Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v10}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x1

    const/4 v5, 0x0

    aput-object v5, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const/4 v5, 0x0

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const/16 v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_1a1} :catch_1a3

    goto/16 :goto_11e

    .line 865
    .end local v7           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v14           #smptm:Ljava/lang/reflect/Method;
    :catch_1a3
    move-exception v8

    .line 867
    .local v8, e:Ljava/lang/Exception;
    sget-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send: Exception calling dual-sim sendMultipartTextMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11e

    .line 871
    .end local v8           #e:Ljava/lang/Exception;
    :cond_1c2
    sget-object v0, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v1, "send: Dual-sim sending via CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v10}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_11e

    .line 876
    :cond_1d8
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v10}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_11e
.end method

.method private static stripControlChars(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    .line 1401
    const-string v0, "[\\u0000-\\u0008\\u000B\\u000C\\u000E-\\u001F]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static update(Lcom/samsung/swift/service/messaging/Message;)Z
    .registers 2
    .parameter "m"

    .prologue
    .line 1352
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->isSKT()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1354
    invoke-static {p0}, Lcom/samsung/swift/service/messaging/SMSPlugin;->updateSKTMessage(Lcom/samsung/swift/service/messaging/Message;)Z

    move-result v0

    .line 1358
    :goto_a
    return v0

    :cond_b
    invoke-static {p0}, Lcom/samsung/swift/service/messaging/SMSPlugin;->updateMessage(Lcom/samsung/swift/service/messaging/Message;)Z

    move-result v0

    goto :goto_a
.end method

.method private static updateMessage(Lcom/samsung/swift/service/messaging/Message;)Z
    .registers 16
    .parameter "m"

    .prologue
    const/4 v2, 0x0

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1244
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->folderId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move v2, v13

    .line 1346
    :goto_13
    return v2

    .line 1249
    :cond_14
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1255
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 1256
    .local v7, message_count:I
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->threadId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_60

    .line 1258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mms-sms/conversations/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->threadId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/recipients"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, u:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1259
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1261
    .local v9, recipientCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_fe

    .line 1265
    :try_start_4d
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1267
    const-string v2, "message_count"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_f9

    move-result v7

    .line 1272
    :cond_5d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1283
    .end local v1           #u:Landroid/net/Uri;
    .end local v9           #recipientCursor:Landroid/database/Cursor;
    :cond_60
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1285
    .local v12, values:Landroid/content/ContentValues;
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 1289
    .local v11, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->isDualSim()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 1291
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->network()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gsm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    .line 1293
    sget-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "updateMessage: gsm network specified"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const-string v2, "band"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1316
    :cond_8f
    :goto_8f
    const-string v2, "read"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->isRead()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1317
    if-lez v7, :cond_ae

    .line 1318
    sget-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "Preserving thread id"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    const-string v2, "thread_id"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->threadId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    :cond_ae
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1322
    const-string v2, "type"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->folderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const-string v2, "body"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->body()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->folderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a1

    .line 1326
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/swift/service/messaging/SMSPlugin;->get(Ljava/lang/String;)Lcom/samsung/swift/service/messaging/Message;

    move-result-object v8

    .line 1327
    .local v8, origmsg:Lcom/samsung/swift/service/messaging/Message;
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->source()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/samsung/swift/service/messaging/Message;->source()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_171

    .line 1329
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t change source address"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1272
    .end local v8           #origmsg:Lcom/samsung/swift/service/messaging/Message;
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v1       #u:Landroid/net/Uri;
    .restart local v9       #recipientCursor:Landroid/database/Cursor;
    :catchall_f9
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_fe
    move v2, v13

    .line 1277
    goto/16 :goto_13

    .line 1296
    .end local v1           #u:Landroid/net/Uri;
    .end local v9           #recipientCursor:Landroid/database/Cursor;
    .restart local v11       #uri:Landroid/net/Uri;
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_101
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->network()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cdma"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    .line 1298
    sget-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "updateMessage: cdma network specified"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const-string v2, "band"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_8f

    .line 1301
    :cond_11f
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->network()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wcdma"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13d

    .line 1303
    sget-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "updateMessage: wcdma network specified"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const-string v2, "band"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_8f

    .line 1308
    :cond_13d
    sget-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "updateMessage: no network specified, looking up from database"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/swift/service/messaging/SMSPlugin;->get(Ljava/lang/String;)Lcom/samsung/swift/service/messaging/Message;

    move-result-object v6

    .line 1311
    .local v6, dbm:Lcom/samsung/swift/service/messaging/Message;
    sget-object v2, Lcom/samsung/swift/service/messaging/SMSPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/samsung/swift/service/messaging/Message;->network()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    invoke-virtual {v6}, Lcom/samsung/swift/service/messaging/Message;->network()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/swift/service/messaging/Message;->setNetwork(Ljava/lang/String;)V

    goto/16 :goto_8f

    .line 1331
    .end local v6           #dbm:Lcom/samsung/swift/service/messaging/Message;
    .restart local v8       #origmsg:Lcom/samsung/swift/service/messaging/Message;
    :cond_171
    const-string v2, "address"

    invoke-virtual {v8}, Lcom/samsung/swift/service/messaging/Message;->source()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    .end local v8           #origmsg:Lcom/samsung/swift/service/messaging/Message;
    :goto_17a
    const-string v2, "_id = ?"

    new-array v3, v14, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->id()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-virtual {v0, v11, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1341
    .local v10, result:I
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->folderId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ab

    .line 1343
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/swift/service/messaging/SMSPlugin;->send(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_13

    .line 1335
    .end local v10           #result:I
    :cond_1a1
    const-string v2, "address"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17a

    .restart local v10       #result:I
    :cond_1ab
    move v2, v14

    .line 1346
    goto/16 :goto_13
.end method

.method private static updateSKTMessage(Lcom/samsung/swift/service/messaging/Message;)Z
    .registers 13
    .parameter "m"

    .prologue
    .line 1140
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->folderId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1142
    const/4 v2, 0x0

    .line 1238
    :goto_10
    return v2

    .line 1145
    :cond_11
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1151
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1152
    .local v6, message_count:I
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->threadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5e

    .line 1154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms-sms/conversations/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->threadId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/recipients"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1155
    .local v1, u:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1157
    .local v8, recipientCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_d8

    .line 1161
    :try_start_4b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1163
    const-string v2, "message_count"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_d3

    move-result v6

    .line 1168
    :cond_5b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1179
    .end local v1           #u:Landroid/net/Uri;
    .end local v8           #recipientCursor:Landroid/database/Cursor;
    :cond_5e
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1183
    .local v11, values:Landroid/content/ContentValues;
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->getContentUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1185
    .local v10, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->isRead()Z

    move-result v2

    if-eqz v2, :cond_db

    .line 1187
    const-string v2, "Status"

    const/16 v3, 0x44d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1194
    :goto_7c
    const-string v2, "SubType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1195
    const-string v2, "DetailType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1196
    const-string v2, "RegTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1197
    const-string v2, "Title"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->body()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->folderId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 1200
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/swift/service/messaging/SMSPlugin;->get(Ljava/lang/String;)Lcom/samsung/swift/service/messaging/Message;

    move-result-object v7

    .line 1201
    .local v7, origmsg:Lcom/samsung/swift/service/messaging/Message;
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->source()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/samsung/swift/service/messaging/Message;->source()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e7

    .line 1203
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t change source address"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1168
    .end local v7           #origmsg:Lcom/samsung/swift/service/messaging/Message;
    .end local v10           #uri:Landroid/net/Uri;
    .end local v11           #values:Landroid/content/ContentValues;
    .restart local v1       #u:Landroid/net/Uri;
    .restart local v8       #recipientCursor:Landroid/database/Cursor;
    :catchall_d3
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1173
    :cond_d8
    const/4 v2, 0x0

    goto/16 :goto_10

    .line 1191
    .end local v1           #u:Landroid/net/Uri;
    .end local v8           #recipientCursor:Landroid/database/Cursor;
    .restart local v10       #uri:Landroid/net/Uri;
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_db
    const-string v2, "Status"

    const/16 v3, 0x44c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_7c

    .line 1205
    .restart local v7       #origmsg:Lcom/samsung/swift/service/messaging/Message;
    :cond_e7
    const-string v2, "MDN1st"

    invoke-virtual {v7}, Lcom/samsung/swift/service/messaging/Message;->source()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v2, "Display"

    invoke-virtual {v7}, Lcom/samsung/swift/service/messaging/Message;->source()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    .end local v7           #origmsg:Lcom/samsung/swift/service/messaging/Message;
    :goto_f9
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->folderId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14e

    .line 1216
    const-string v2, "MainType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1231
    :cond_112
    :goto_112
    const-string v2, "RootID = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->id()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v10, v11, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1233
    .local v9, result:I
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->folderId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19d

    .line 1235
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/swift/service/messaging/SMSPlugin;->send(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_10

    .line 1210
    .end local v9           #result:I
    :cond_13b
    const-string v2, "MDN1st"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string v2, "Display"

    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->destination()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f9

    .line 1218
    :cond_14e
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->folderId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_168

    .line 1220
    const-string v2, "MainType"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_112

    .line 1222
    :cond_168
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->folderId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    .line 1224
    const-string v2, "MainType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_112

    .line 1226
    :cond_182
    invoke-virtual {p0}, Lcom/samsung/swift/service/messaging/Message;->folderId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_112

    .line 1228
    const-string v2, "MainType"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_112

    .line 1238
    .restart local v9       #result:I
    :cond_19d
    const/4 v2, 0x1

    goto/16 :goto_10
.end method
