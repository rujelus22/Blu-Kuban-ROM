.class public Lcom/android/mms/transaction/SmsReceiverService;
.super Landroid/app/Service;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/SmsReceiverService$CmasDialogData;,
        Lcom/android/mms/transaction/SmsReceiverService$HeadsetEventReceiver;,
        Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final DUPLICATE_PROJECTION:[Ljava/lang/String;

.field private static final REPLACE_PROJECTION:[Ljava/lang/String;

.field private static final SEND_PROJECTION:[Ljava/lang/String;

.field public static cmasDataVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/mms/transaction/SmsReceiverService$CmasDialogData;",
            ">;"
        }
    .end annotation
.end field

.field private static mSending:Z


# instance fields
.field private final GROUP_SMS_PROJECTION:[Ljava/lang/String;

.field private mBeforeError:I

.field private mCmasThreadId:Ljava/lang/Long;

.field private mMessage:Ljava/lang/String;

.field mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecipient:Ljava/lang/String;

.field private mResultCode:I

.field private mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mStringThreadId:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "body"

    aput-object v1, v0, v5

    const-string v1, "status"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->cmasDataVector:Ljava/util/Vector;

    .line 982
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "protocol"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    .line 987
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "protocol"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->DUPLICATE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    .line 179
    iput v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mBeforeError:I

    .line 181
    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mCmasThreadId:Ljava/lang/Long;

    .line 188
    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$HeadsetEventReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/transaction/SmsReceiverService$HeadsetEventReceiver;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Lcom/android/mms/transaction/SmsReceiverService$1;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 512
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "type"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "group_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->GROUP_SMS_PROJECTION:[Ljava/lang/String;

    .line 1790
    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$4;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/SmsReceiverService$4;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    .line 1999
    return-void
.end method

.method private CheckDuplicateCMAS(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1882
    .line 1884
    aget-object v1, p2, v8

    .line 1885
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getCMASMessageID()I

    move-result v0

    .line 1886
    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckDuplicateCMAS CMAS :Msg ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    if-nez v0, :cond_3e

    .line 1888
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageIdentifier()I

    move-result v0

    .line 1889
    const-string v1, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cmas msg id is null changing Message ID to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    :cond_3e
    if-eqz v0, :cond_74

    .line 1893
    const-string v4, "identifier = ?"

    .line 1894
    new-array v5, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    .line 1895
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1896
    new-array v3, v7, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v8

    .line 1898
    const-string v0, "Mms/SmsReceiverService"

    const-string v2, "CheckDuplicateCMAS:Running the Query"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    :try_start_5b
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1904
    if-eqz v0, :cond_75

    .line 1905
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_7c

    .line 1906
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "CheckDuplicateCMAS:Duplicate Found"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    :goto_73
    move v8, v0

    .line 1918
    :cond_74
    :goto_74
    return v8

    .line 1910
    :cond_75
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "CheckDuplicateCMAS:NO Duplicate"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_7c} :catch_7e

    :cond_7c
    move v0, v8

    goto :goto_73

    .line 1912
    :catch_7e
    move-exception v0

    .line 1913
    const-string v1, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckDuplicateCMAS:Caught Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74
.end method

.method private CheckDuplicatedMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1830
    aget-object v0, p2, v8

    .line 1831
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1832
    const-string v2, "body"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1836
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 1837
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    .line 1838
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageIdentifier()I

    move-result v3

    .line 1839
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v9

    .line 1841
    const-string v4, "address = ? AND protocol = ?"

    .line 1846
    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    .line 1851
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/SmsReceiverService;->DUPLICATE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1853
    if-eqz v1, :cond_80

    .line 1855
    :try_start_3d
    const-string v0, "Mms/SmsReceiverService"

    const-string v2, "-cursor in "

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1858
    :cond_4a
    const-string v0, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1864
    cmp-long v0, v2, v9

    if-nez v0, :cond_77

    .line 1866
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_72
    .catchall {:try_start_3d .. :try_end_72} :catchall_82

    .line 1872
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 1876
    :goto_76
    return v0

    .line 1869
    :cond_77
    :try_start_77
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_82

    move-result v0

    if-nez v0, :cond_4a

    .line 1872
    :cond_7d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_80
    move v0, v8

    .line 1876
    goto :goto_76

    .line 1872
    :catchall_82
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static FilterCLRF(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "source"

    .prologue
    .line 1447
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 1448
    .local v1, i:I
    const/4 v0, 0x0

    .line 1449
    .local v0, count:I
    add-int/lit8 v3, v1, 0x1

    .line 1451
    .local v3, total:I
    :goto_9
    if-lez v1, :cond_20

    .line 1452
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1b

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_20

    .line 1453
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 1456
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1459
    :cond_20
    const/4 v4, 0x0

    sub-int v5, v3, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1460
    .local v2, ret:Ljava/lang/String;
    return-object v2
.end method

.method private SetScptMessage(IZLandroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 2010
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2012
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 2014
    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "handleSmsReceived: SCPT = TRUE"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSmsReceived: OPERATION_CODE = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    if-nez p1, :cond_45

    .line 2019
    if-eqz p2, :cond_3c

    .line 2020
    invoke-interface {v1, p4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2021
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object v1, p5

    move v3, p6

    move v4, v2

    move-object v7, v6

    .line 2022
    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2049
    :cond_3b
    :goto_3b
    return-void

    .line 2025
    :cond_3c
    const/4 v5, 0x4

    move-object v1, p5

    move v3, p6

    move v4, v2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3b

    .line 2029
    :cond_45
    if-ne p1, v2, :cond_60

    .line 2030
    if-nez p2, :cond_57

    .line 2031
    invoke-interface {v1, p4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2032
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object v1, p5

    move v3, p6

    move v4, v2

    move-object v7, v6

    .line 2033
    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3b

    .line 2036
    :cond_57
    const/4 v5, 0x3

    move-object v1, p5

    move v3, p6

    move v4, v2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3b

    .line 2039
    :cond_60
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3b

    .line 2041
    const-string v3, "#cmas#type##extreme#enabled"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2042
    const-string v3, "#cmas#type##severe#enabled"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2043
    const-string v3, "#cmas#type##amber#enabled"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2044
    const-string v3, "#cmas#type##test#enabled"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2045
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object v1, p5

    move v3, p6

    move v4, v2

    move-object v7, v6

    .line 2046
    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3b
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForSetCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForGetCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;Landroid/content/SharedPreferences;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSIMStatus(Landroid/content/Intent;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/SharedPreferences;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleCbSettingsAvailable(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsServiceCenter(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/transaction/SmsReceiverService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handlePCWLockMessage(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mRecipient:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/transaction/SmsReceiverService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->sendPCWLockMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handlScptReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/SmsReceiverService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/SmsReceiverService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->registerForRoamingStatusChanges()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/SmsReceiverService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleSendMessage()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleRoamingStatusChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;Landroid/content/SharedPreferences;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsCbReceived(Landroid/content/Intent;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private displayClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1422
    aget-object v0, p2, v1

    .line 1424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1425
    array-length v4, p2

    .line 1427
    const/4 v2, 0x1

    if-ne v4, v2, :cond_3c

    .line 1428
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    :cond_13
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "pdu"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "body"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1442
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1443
    return-void

    .line 1430
    :cond_3c
    :goto_3c
    if-ge v1, v4, :cond_13

    .line 1431
    aget-object v2, p2, v1

    .line 1432
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_3c
.end method

.method private extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .registers 14
    .parameter

    .prologue
    const/16 v11, 0x1000

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1238
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1241
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isCMASMessage()Z

    move-result v3

    if-eqz v3, :cond_289

    .line 1242
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v3

    .line 1244
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "CMAS, putting address in DB"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMAS, service category = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    if-ne v11, v3, :cond_245

    .line 1248
    const-string v3, "address"

    const-string v4, "#CMAS#Presidential"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string v3, "#CMAS#Presidential"

    invoke-virtual {p1, v3}, Landroid/telephony/SmsMessage;->setCMASAddress(Ljava/lang/String;)V

    .line 1301
    :goto_40
    const-string v3, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1310
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isCMASMessage()Z

    move-result v3

    if-eqz v3, :cond_366

    .line 1312
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v0

    .line 1316
    :try_start_57
    const-string v1, "Mms/SmsReceiverService"

    const-string v3, "Persisting CMAS specific fields."

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string v1, "service_category"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1319
    const-string v1, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Persisting CMAS:Service Cat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const-string v1, "category"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASCategory()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1324
    const-string v1, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Persisting CMAS:Category="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASCategory()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    const-string v1, "response_type"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASResponseType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1327
    const-string v1, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Persisting CMAS:ResponseType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASResponseType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const-string v1, "severity"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASSeverity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1332
    const-string v1, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Persisting CMAS:Severity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASSeverity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    const-string v1, "urgency"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASUrgency()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1335
    const-string v1, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Persisting CMAS:Urgency="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASUrgency()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const-string v1, "certainty"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASCertainty()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1338
    const-string v1, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Persisting CMAS:Certainity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASCertainty()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASMessageID()I

    move-result v1

    if-nez v1, :cond_312

    .line 1343
    const-string v1, "identifier"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1348
    :goto_167
    const-string v1, "alert_handling"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASAlertHandling()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1349
    const-string v1, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Persisting CMAS:Alert Handling="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASAlertHandling()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    const-wide/16 v3, 0x0

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASMsgExpires()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_353

    .line 1356
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASMsgExpires()J

    move-result-wide v3

    .line 1357
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1360
    invoke-virtual {v1, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 1362
    const-string v5, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CMAS:GMT off val = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v1, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const-string v1, "expires"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1366
    const-string v1, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persisting CMAS:Expiry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const-string v1, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persisting CMAS:Cur time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    if-ne v11, v0, :cond_340

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-gez v0, :cond_340

    .line 1377
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "Persisting CMAS fields: CMAS expiry=0"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    const-string v0, "cmas_sms_expired"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1389
    :goto_21b
    const-string v0, "language"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASLanguage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1390
    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Persisting CMAS:Language="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASLanguage()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_244
    .catch Ljava/lang/NullPointerException; {:try_start_57 .. :try_end_244} :catch_33d

    .line 1413
    :goto_244
    return-object v2

    .line 1252
    :cond_245
    const/16 v4, 0x1001

    if-ne v4, v3, :cond_257

    .line 1253
    const-string v3, "address"

    const-string v4, "#CMAS#Extreme"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v3, "#CMAS#Extreme"

    invoke-virtual {p1, v3}, Landroid/telephony/SmsMessage;->setCMASAddress(Ljava/lang/String;)V

    goto/16 :goto_40

    .line 1257
    :cond_257
    const/16 v4, 0x1002

    if-ne v4, v3, :cond_269

    .line 1258
    const-string v3, "address"

    const-string v4, "#CMAS#Severe"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    const-string v3, "#CMAS#Severe"

    invoke-virtual {p1, v3}, Landroid/telephony/SmsMessage;->setCMASAddress(Ljava/lang/String;)V

    goto/16 :goto_40

    .line 1262
    :cond_269
    const/16 v4, 0x1003

    if-ne v4, v3, :cond_27b

    .line 1263
    const-string v3, "address"

    const-string v4, "#CMAS#Amber"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    const-string v3, "#CMAS#Amber"

    invoke-virtual {p1, v3}, Landroid/telephony/SmsMessage;->setCMASAddress(Ljava/lang/String;)V

    goto/16 :goto_40

    .line 1268
    :cond_27b
    const-string v3, "address"

    const-string v4, "#CMAS#Test"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    const-string v3, "#CMAS#Test"

    invoke-virtual {p1, v3}, Landroid/telephony/SmsMessage;->setCMASAddress(Ljava/lang/String;)V

    goto/16 :goto_40

    .line 1275
    :cond_289
    const-string v3, "ril.sms.gcf-mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1277
    const-string v4, "On"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ef

    .line 1278
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2c8

    .line 1279
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms.getOriginatingAddress() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    const-string v3, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    .line 1282
    :cond_2c8
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms.getDisplayOriginatingAddress(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    const-string v3, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    .line 1288
    :cond_2ef
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_304

    .line 1289
    const-string v3, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    .line 1291
    :cond_304
    const-string v3, "address"

    const v4, 0x7f090172

    invoke-virtual {p0, v4}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    .line 1345
    :cond_312
    :try_start_312
    const-string v1, "identifier"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASMessageID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1346
    const-string v1, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Persisting CMAS:Msg ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASMessageID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_167

    .line 1392
    :catch_33d
    move-exception v0

    goto/16 :goto_244

    .line 1380
    :cond_340
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "Persisting CMAS fields: CMAS expiry=1"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v0, "cmas_sms_expired"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_21b

    .line 1385
    :cond_353
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "Persisting CMAS fields: CMAS expiry=1"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const-string v0, "cmas_sms_expired"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_364
    .catch Ljava/lang/NullPointerException; {:try_start_312 .. :try_end_364} :catch_33d

    goto/16 :goto_21b

    .line 1397
    :cond_366
    const-string v3, "protocol"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1398
    const-string v3, "read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1399
    const-string v3, "seen"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1402
    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "NOT a CMAS: CMAS expiry=1"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    const-string v3, "cmas_sms_expired"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1406
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3a8

    .line 1407
    const-string v3, "subject"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    :cond_3a8
    const-string v3, "reply_path_present"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v4

    if-eqz v4, :cond_3c2

    :goto_3b0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1411
    const-string v0, "service_center"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_244

    :cond_3c2
    move v0, v1

    .line 1410
    goto :goto_3b0
.end method

.method public static getCmasDialogCount()I
    .registers 1

    .prologue
    .line 1980
    sget-object v0, Lcom/android/mms/transaction/SmsReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method private handlScptReceived(Landroid/content/Intent;I)V
    .registers 16
    .parameter "intent"
    .parameter "error"

    .prologue
    .line 690
    const-string v0, "Mms/SmsReceiverService"

    const-string v11, "SMS SCPT RECEIVED ACTION Handle"

    invoke-static {v0, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v8

    .line 693
    .local v8, msgs:[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    aget-object v10, v8, v0

    .line 695
    .local v10, sms:Landroid/telephony/SmsMessage;
    const-string v0, "pdus"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, [Ljava/lang/Object;

    .line 696
    .local v7, messages:[Ljava/lang/Object;
    array-length v0, v7

    new-array v9, v0, [[B

    .line 698
    .local v9, pduObjs:[[B
    if-nez v10, :cond_26

    .line 700
    const-string v0, "Mms/SmsReceiverService"

    const-string v11, "NULL SMS RECEIVED"

    invoke-static {v0, v11}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_25
    :goto_25
    return-void

    .line 705
    :cond_26
    const-string v0, "Mms/SmsReceiverService"

    const-string v11, "handleSmsReceived: SCPT = TRUE"

    invoke-static {v0, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getScptCategory()I

    move-result v6

    .line 708
    .local v6, ScptCategory:I
    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 709
    .local v5, OriginatingAddress:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 712
    .local v3, prefs:Landroid/content/SharedPreferences;
    const/4 v2, 0x1

    .line 713
    .local v2, bTemp:Z
    const/4 v4, 0x0

    .line 715
    .local v4, key_string:Ljava/lang/String;
    const-string v0, "Mms/SmsReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleSmsReceived: Category = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const/16 v0, 0x1001

    if-ne v0, v6, :cond_69

    .line 718
    const-string v4, "#cmas#type##extreme#enabled"

    .line 719
    const/4 v0, 0x1

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 731
    :cond_5e
    :goto_5e
    if-eqz v4, :cond_25

    .line 732
    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getScptOperationCode()I

    move-result v1

    .local v1, operation_code:I
    move-object v0, p0

    .line 733
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsReceiverService;->SetScptMessage(IZLandroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_25

    .line 720
    .end local v1           #operation_code:I
    :cond_69
    const/16 v0, 0x1002

    if-ne v0, v6, :cond_75

    .line 721
    const-string v4, "#cmas#type##severe#enabled"

    .line 722
    const/4 v0, 0x1

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_5e

    .line 723
    :cond_75
    const/16 v0, 0x1003

    if-ne v0, v6, :cond_81

    .line 724
    const-string v4, "#cmas#type##amber#enabled"

    .line 725
    const/4 v0, 0x1

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_5e

    .line 726
    :cond_81
    const/16 v0, 0x1004

    if-ne v0, v6, :cond_5e

    .line 727
    const-string v4, "#cmas#type##test#enabled"

    .line 728
    const/4 v0, 0x1

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_5e
.end method

.method private handleBootCompleted()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 924
    const-string v1, "Mms/SmsReceiverService"

    const-string v2, "handleBootCompleted()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/SmsReceiverService;->handlePCWLockMessage(Z)V

    .line 930
    invoke-static {}, Lcom/android/mms/data/Conversation;->deleteTempConversation()V

    .line 934
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->moveOutboxMessagesToFailedBox()I

    move-result v0

    .line 935
    .local v0, numMoved:I
    if-lez v0, :cond_1c

    .line 936
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 939
    :cond_1c
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 944
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->setBadge(Landroid/content/Context;I)V

    .line 946
    invoke-static {p0, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 947
    const-string v1, "Mms/SmsReceiverService"

    const-string v2, "handleBootCompleted()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    return-void
.end method

.method private handleCbSettingsAvailable(Landroid/content/SharedPreferences;)V
    .registers 9
    .parameter

    .prologue
    .line 1522
    .line 1523
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    .line 1524
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1532
    const/16 v0, 0x3e8

    .line 1537
    const-string v2, "pref_cb_my_channel_max_count"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1538
    const-string v2, "pref_sim_ready_status"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1574
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;)[S

    move-result-object v2

    .line 1575
    array-length v3, v2

    .line 1577
    if-le v3, v0, :cond_2e

    .line 1578
    :goto_1f
    if-ge v0, v3, :cond_2e

    .line 1579
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aget-short v5, v2, v0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/ChannelUtils;->updateSubscription(Landroid/content/Context;II)V

    .line 1578
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1582
    :cond_2e
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;)[S

    move-result-object v0

    .line 1583
    const-string v2, "pref_cb_my_channel_enabled_count"

    array-length v0, v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1584
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1586
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 1587
    return-void
.end method

.method private handleCmasDialog(Landroid/content/Intent;)V
    .registers 9
    .parameter "cmasDialogIntent"

    .prologue
    .line 1941
    const/4 v3, 0x0

    .line 1944
    .local v3, found:Z
    :try_start_1
    sget-object v4, Lcom/android/mms/transaction/SmsReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_2d

    .line 1945
    sget-object v4, Lcom/android/mms/transaction/SmsReceiverService;->cmasDataVector:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/SmsReceiverService$CmasDialogData;

    .line 1946
    .local v0, data:Lcom/android/mms/transaction/SmsReceiverService$CmasDialogData;
    sget-object v4, Lcom/android/mms/transaction/SmsReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v5, Lcom/android/mms/transaction/SmsReceiverService$CmasDialogData;

    invoke-direct {v5, p0, p1}, Lcom/android/mms/transaction/SmsReceiverService$CmasDialogData;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1947
    invoke-static {}, Lcom/android/mms/ui/CmasDialog;->getInstance()Lcom/android/mms/ui/CmasDialog;

    move-result-object v1

    .line 1949
    .local v1, dialog:Lcom/android/mms/ui/CmasDialog;
    if-eqz v1, :cond_2c

    .line 1950
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/mms/ui/CmasDialog;->mDialogHandled:Z

    .line 1951
    invoke-virtual {v1}, Lcom/android/mms/ui/CmasDialog;->dismissDialogForPriority()V

    .line 1952
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->startActivity(Landroid/content/Intent;)V

    .line 1962
    .end local v0           #data:Lcom/android/mms/transaction/SmsReceiverService$CmasDialogData;
    .end local v1           #dialog:Lcom/android/mms/ui/CmasDialog;
    :cond_2c
    :goto_2c
    return-void

    .line 1955
    :cond_2d
    sget-object v4, Lcom/android/mms/transaction/SmsReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v5, Lcom/android/mms/transaction/SmsReceiverService$CmasDialogData;

    invoke-direct {v5, p0, p1}, Lcom/android/mms/transaction/SmsReceiverService$CmasDialogData;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1956
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->startActivity(Landroid/content/Intent;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_3b

    goto :goto_2c

    .line 1958
    :catch_3b
    move-exception v2

    .line 1959
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error in creating CMAS dialog "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c
.end method

.method private handleErrCodeForGetCbReceived(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    .line 1590
    const-string v0, "getRsp"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 1592
    instance-of v1, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_29

    .line 1593
    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 1594
    const-string v1, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CB] error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    :goto_28
    return-void

    .line 1596
    :cond_29
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "[CB] error code = Unknown Object received "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method private handleErrCodeForSetCbReceived(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    .line 1496
    const-string v0, "setRsp"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 1498
    instance-of v1, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_29

    .line 1499
    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 1500
    const-string v1, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CB] error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    :goto_28
    return-void

    .line 1502
    :cond_29
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "[CB] error code = Unknown Object received "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method private handlePCWLockMessage(Z)V
    .registers 6
    .parameter

    .prologue
    .line 1811
    const/16 v0, 0x14

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_pcw_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_5c

    .line 1812
    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCW LOCK. Send Lock message. BootComplete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_pcw_phone"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mRecipient:Ljava/lang/String;

    .line 1815
    if-eqz p1, :cond_5d

    .line 1816
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    .line 1822
    :goto_4a
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1823
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1825
    :cond_5c
    return-void

    .line 1818
    :cond_5d
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    goto :goto_4a
.end method

.method private handleRoamingStatusChanged(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 439
    const-string v1, "status"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, currentRoam:Ljava/lang/String;
    const-string v1, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_ROAMING_STATUS_CHANGED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 444
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 446
    :cond_29
    return-void
.end method

.method private handleSIMStatus(Landroid/content/Intent;Landroid/content/SharedPreferences;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1507
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "handleSIMStatus()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const-string v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1509
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1511
    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSIMStatus(): SIM_STATUS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    const-string v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1513
    const-string v0, "pref_sim_ready_status"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1514
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1519
    :cond_3a
    :goto_3a
    return-void

    .line 1515
    :cond_3b
    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1516
    const-string v0, "pref_sim_ready_status"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1517
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3a
.end method

.method private handleSendMessage()V
    .registers 2

    .prologue
    .line 450
    sget-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    if-nez v0, :cond_7

    .line 451
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 453
    :cond_7
    return-void
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 430
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 431
    .local v0, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_11

    .line 432
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 434
    :cond_11
    return-void
.end method

.method private handleSmsCbReceived(Landroid/content/Intent;Landroid/content/SharedPreferences;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1478
    const-string v0, "pref_key_cb_settings_activation"

    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1479
    const-string v1, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Config.TelephonyFeature.CONFIG_CB_FEATURE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    if-eqz v0, :cond_39

    .line 1483
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1484
    if-nez v0, :cond_3a

    .line 1485
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "received SMS_CB_RECEIVED_ACTION with no extras!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    :cond_39
    :goto_39
    return-void

    .line 1489
    :cond_3a
    invoke-direct {p0, p0, v0, p2}, Lcom/android/mms/transaction/SmsReceiverService;->storeCbMessage(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/SharedPreferences;)Landroid/net/Uri;

    move-result-object v0

    .line 1490
    if-eqz v0, :cond_39

    .line 1491
    invoke-static {p0, v5, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    goto :goto_39
.end method

.method private handleSmsReceived(Landroid/content/Intent;I)V
    .registers 18
    .parameter "intent"
    .parameter "error"

    .prologue
    .line 742
    const-string v12, "Mms/SmsReceiverService"

    const-string v13, "handleSmsReceived()"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 745
    .local v7, msgs:[Landroid/telephony/SmsMessage;
    const/4 v12, 0x0

    aget-object v11, v7, v12

    .line 748
    .local v11, sms:Landroid/telephony/SmsMessage;
    new-instance v8, Lcom/android/mms/transaction/MTMessageParser;

    invoke-direct {v8}, Lcom/android/mms/transaction/MTMessageParser;-><init>()V

    .line 749
    .local v8, mtparser:Lcom/android/mms/transaction/MTMessageParser;
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/transaction/MTMessageParser;->messageParser(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_23

    .line 894
    :cond_22
    :goto_22
    return-void

    .line 755
    :cond_23
    invoke-direct {p0, p0, v7}, Lcom/android/mms/transaction/SmsReceiverService;->CheckDuplicatedMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z

    move-result v12

    if-eqz v12, :cond_31

    .line 756
    const-string v12, "Mms/SmsReceiverService"

    const-string v13, "SEC_APPLY_SPRINT_SMS : Same Message already is received "

    invoke-static {v12, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 762
    :cond_31
    const-wide/16 v3, 0x0

    .line 763
    .local v3, expiryTimeMillis:J
    const/4 v5, 0x0

    .line 765
    .local v5, isCmas:Z
    const-string v2, "#CMAS#"

    .line 768
    .local v2, cmas_addr:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->isCMASMessage()Z

    move-result v5

    .line 770
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->isCMASMessage()Z

    move-result v12

    if-eqz v12, :cond_100

    .line 771
    const-string v12, "Mms/SmsReceiverService"

    const-string v13, "handleSmsReceived: CMAS = TRUE"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v9

    .line 773
    .local v9, nCmasCat:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 774
    .local v10, prefs:Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    .line 776
    .local v1, bTemp:Z
    const-string v12, "pref_emergency_alert"

    const/4 v13, 0x1

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 777
    const-string v12, "Mms/SmsReceiverService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleSmsReceived: Category :nCmasCat =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    if-nez v1, :cond_83

    const/4 v12, 0x1

    move v13, v12

    :goto_73
    const/16 v12, 0x1000

    if-eq v12, v9, :cond_86

    const/4 v12, 0x1

    :goto_78
    and-int/2addr v12, v13

    if-eqz v12, :cond_88

    .line 780
    const-string v12, "Mms/SmsReceiverService"

    const-string v13, "CMAS is not enabled!!!!"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 779
    :cond_83
    const/4 v12, 0x0

    move v13, v12

    goto :goto_73

    :cond_86
    const/4 v12, 0x0

    goto :goto_78

    .line 784
    :cond_88
    const-string v12, "Mms/SmsReceiverService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleSmsReceived: Category = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const/16 v12, 0x1001

    if-ne v12, v9, :cond_c0

    .line 787
    const-string v12, "#cmas#type##extreme#enabled"

    const/4 v13, 0x1

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 800
    :cond_ab
    :goto_ab
    if-nez v1, :cond_e4

    const/4 v12, 0x1

    move v13, v12

    :goto_af
    const/16 v12, 0x1000

    if-eq v12, v9, :cond_e7

    const/4 v12, 0x1

    :goto_b4
    and-int/2addr v12, v13

    if-eqz v12, :cond_e9

    .line 801
    const-string v12, "Mms/SmsReceiverService"

    const-string v13, "handleSmsReceived: Pref not Enbaled"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    .line 788
    :cond_c0
    const/16 v12, 0x1002

    if-ne v12, v9, :cond_cc

    .line 789
    const-string v12, "#cmas#type##severe#enabled"

    const/4 v13, 0x1

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_ab

    .line 790
    :cond_cc
    const/16 v12, 0x1003

    if-ne v12, v9, :cond_d8

    .line 791
    const-string v12, "#cmas#type##amber#enabled"

    const/4 v13, 0x1

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_ab

    .line 792
    :cond_d8
    const/16 v12, 0x1004

    if-ne v12, v9, :cond_ab

    .line 793
    const-string v12, "#cmas#type##test#enabled"

    const/4 v13, 0x0

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_ab

    .line 800
    :cond_e4
    const/4 v12, 0x0

    move v13, v12

    goto :goto_af

    :cond_e7
    const/4 v12, 0x0

    goto :goto_b4

    .line 805
    :cond_e9
    const-string v12, "Mms/SmsReceiverService"

    const-string v13, "handleSmsReceived: CMAS duplication check"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const/4 v12, 0x1

    invoke-direct {p0, p0, v7}, Lcom/android/mms/transaction/SmsReceiverService;->CheckDuplicateCMAS(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z

    move-result v13

    if-ne v12, v13, :cond_107

    .line 807
    const-string v12, "Mms/SmsReceiverService"

    const-string v13, "handleSmsReceived: CMAS Duplicate, returning"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    .line 811
    .end local v1           #bTemp:Z
    .end local v9           #nCmasCat:I
    .end local v10           #prefs:Landroid/content/SharedPreferences;
    :cond_100
    const-string v12, "Mms/SmsReceiverService"

    const-string v13, "handleSmsReceived: CMAS = FALSE"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_107
    move/from16 v0, p2

    invoke-direct {p0, p0, v7, v0}, Lcom/android/mms/transaction/SmsReceiverService;->insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v6

    .line 835
    .local v6, messageUri:Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 837
    if-eqz v5, :cond_15e

    .line 838
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/mms/ui/MessageUtils;->mIsCMAS:Z

    .line 839
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/mms/ui/MessageUtils;->mCMASType:Ljava/lang/String;

    .line 841
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getCMASAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/mms/ui/MessageUtils;->mCMASType:Ljava/lang/String;

    .line 843
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getCMASMsgExpires()J

    move-result-wide v3

    .line 845
    const-string v12, "Mms/SmsReceiverService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleSmsReceived, mCMASType = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/mms/ui/MessageUtils;->mCMASType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "expiry time = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :cond_15e
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->isCMASMessage()Z

    move-result v12

    if-eqz v12, :cond_17c

    .line 864
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->isInCallState()Z

    move-result v12

    if-nez v12, :cond_17c

    .line 865
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v9

    .line 866
    .restart local v9       #nCmasCat:I
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v6, v9, v12}, Lcom/android/mms/transaction/SmsReceiverService;->showCmasDialog(Landroid/net/Uri;ILjava/lang/String;)V

    .line 867
    const-string v12, "Mms/SmsReceiverService"

    const-string v13, "handleSmsReceived: is in call state"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    .end local v9           #nCmasCat:I
    :cond_17c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v12

    if-eqz v12, :cond_1cf

    .line 874
    const-string v12, "Mms/SmsReceiverService"

    const-string v13, "handleSmsReceived..."

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string v13, "Mms/SmsReceiverService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleSmsReceived"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v12

    if-eqz v12, :cond_207

    const-string v12, "(replace)"

    :goto_19e
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " messageUri: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", address: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", body: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_1cf
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v12

    if-eqz v12, :cond_1fe

    .line 883
    const-string v12, "GATE"

    const-string v13, "<GATE-M>INCOMING_MSG</GATE-M>"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v12, "GATE"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<GATE-M>SMSSENDERINFO:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "</GATE-M>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :cond_1fe
    if-eqz v6, :cond_22

    .line 890
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    goto/16 :goto_22

    .line 875
    :cond_207
    const-string v12, ""

    goto :goto_19e
.end method

.method private handleSmsSent(Landroid/content/Intent;I)V
    .registers 12
    .parameter "intent"
    .parameter "error"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 581
    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "handleSmsSent()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 584
    .local v2, uri:Landroid/net/Uri;
    sput-boolean v6, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    .line 585
    const-string v3, "SendNextMsg"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 587
    .local v0, sendNextMsg:Z
    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-direct {p0, v2, v3}, Lcom/android/mms/transaction/SmsReceiverService;->updateGroupType(Landroid/net/Uri;I)Z

    move-result v1

    .line 590
    .local v1, updated:Z
    if-nez v0, :cond_26

    .line 591
    sput-boolean v5, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    .line 592
    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mBeforeError:I

    if-eqz v3, :cond_26

    .line 674
    :cond_25
    :goto_25
    return-void

    .line 597
    :cond_26
    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8b

    .line 598
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 599
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSmsSent sending uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_49
    if-eqz v0, :cond_73

    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mBeforeError:I

    if-nez v3, :cond_73

    .line 603
    invoke-static {p0, v2, v7, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v3

    if-nez v3, :cond_73

    .line 604
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSmsSent: failed to move message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to sent folder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :cond_73
    if-eqz v0, :cond_7a

    .line 608
    iput v6, p0, Lcom/android/mms/transaction/SmsReceiverService;->mBeforeError:I

    .line 609
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 613
    :cond_7a
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 614
    const-string v3, "GATE"

    const-string v4, "<GATE-M>SMS_SENT_SUCCESS</GATE-M>"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_87
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    goto :goto_25

    .line 621
    :cond_8b
    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-eq v3, v7, :cond_94

    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_d1

    .line 623
    :cond_94
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 624
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSmsSent: no service, queuing message w/ uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_b2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 631
    const-string v3, "GATE"

    const-string v4, "<GATE-M>SMS_MSG_ERROR</GATE-M>"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_bf
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->registerForServiceStateChanges()V

    .line 635
    invoke-static {p0, v2, v8, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 636
    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/transaction/SmsReceiverService$1;

    invoke-direct {v4, p0}, Lcom/android/mms/transaction/SmsReceiverService$1;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_25

    .line 642
    :cond_d1
    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-ne v3, v8, :cond_e1

    .line 643
    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/transaction/SmsReceiverService$2;

    invoke-direct {v4, p0}, Lcom/android/mms/transaction/SmsReceiverService$2;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_25

    .line 651
    :cond_e1
    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_107

    .line 652
    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "handleSmsSent : DSAC Failure "

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const/4 v3, 0x5

    invoke-static {p0, v2, v3, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 654
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 655
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 657
    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/transaction/SmsReceiverService$3;

    invoke-direct {v4, p0}, Lcom/android/mms/transaction/SmsReceiverService$3;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_25

    .line 667
    :cond_107
    iput p2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mBeforeError:I

    .line 668
    invoke-direct {p0, v2, p2, v1}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZ)V

    .line 669
    if-eqz v0, :cond_25

    .line 670
    iput v6, p0, Lcom/android/mms/transaction/SmsReceiverService;->mBeforeError:I

    .line 671
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    goto/16 :goto_25
.end method

.method private handleSmsServiceCenter(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 403
    const-string v4, "smsc"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, Smsc:[Ljava/lang/String;
    if-nez v0, :cond_a

    .line 425
    :goto_9
    return-void

    .line 411
    :cond_a
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SMS]handleSmsServiceCenter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 415
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 417
    .local v1, editprefs:Landroid/content/SharedPreferences$Editor;
    aget-object v4, v0, v7

    const-string v5, "NotSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 418
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09011c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 420
    .local v2, not_set:Ljava/lang/String;
    const-string v4, "pref_key_manage_smsc_address"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 424
    .end local v2           #not_set:Ljava/lang/String;
    :goto_50
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_9

    .line 422
    :cond_54
    const-string v4, "pref_key_manage_smsc_address"

    aget-object v5, v0, v7

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_50
.end method

.method private insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1011
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "insertMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const/4 v0, 0x0

    aget-object v0, p2, v0

    .line 1015
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v1, v2, :cond_17

    .line 1016
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->displayClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)V

    .line 1017
    const/4 v0, 0x0

    .line 1021
    :goto_16
    return-object v0

    .line 1018
    :cond_17
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1019
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/SmsReceiverService;->replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_16

    .line 1021
    :cond_22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_16
.end method

.method private isInCallState()Z
    .registers 2

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_e

    .line 1929
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1931
    :cond_e
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private messageFailedToSend(Landroid/net/Uri;IZ)V
    .registers 7
    .parameter "uri"
    .parameter "error"
    .parameter "needToNotify"

    .prologue
    .line 679
    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageFailedToSend msg failed uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const/4 v0, 0x5

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 682
    if-eqz p3, :cond_26

    .line 683
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 684
    :cond_26
    return-void
.end method

.method private moveOutboxMessagesToFailedBox()I
    .registers 7

    .prologue
    .line 955
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 957
    const-string v0, "type"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 958
    const-string v0, "error_code"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 959
    const-string v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 961
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type = 4"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 965
    const-string v1, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveOutboxMessagesToFailedBox messageCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    return v0
.end method

.method private registerForRoamingStatusChanges()V
    .registers 5

    .prologue
    .line 1743
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1744
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForRoamingStatusChanges()V

    .line 1746
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1749
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "registerForRoamingStatusChanges"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1753
    return-void
.end method

.method private registerForServiceStateChanges()V
    .registers 5

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1718
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V

    .line 1720
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1721
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1722
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1723
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "registerForServiceStateChanges"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    :cond_1e
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1727
    return-void
.end method

.method private replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1033
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "replaceMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    aget-object v0, p2, v2

    .line 1035
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v7

    .line 1038
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1039
    array-length v5, p2

    move-object v3, v0

    move v0, v2

    .line 1041
    :goto_17
    if-ge v0, v5, :cond_26

    .line 1042
    aget-object v1, p2, v0

    .line 1043
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    add-int/lit8 v0, v0, 0x1

    move-object v3, v1

    goto :goto_17

    .line 1046
    :cond_26
    const-string v0, "body"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string v0, "error_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1051
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1052
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 1053
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v3

    .line 1054
    const-string v4, "address = ? AND protocol = ?"

    .line 1056
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v2

    const/4 v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    .line 1060
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1063
    if-eqz v6, :cond_80

    .line 1065
    :try_start_61
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1066
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1067
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1069
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, v7

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_61 .. :try_end_79} :catchall_85

    .line 1073
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1076
    :goto_7c
    return-object v2

    .line 1073
    :cond_7d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1076
    :cond_80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_7c

    .line 1073
    :catchall_85
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private sendPCWLockMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1770
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 1772
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1774
    if-nez v1, :cond_1c

    .line 1775
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "sendPCWLockMessage : conManager is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    :cond_1b
    :goto_1b
    return-void

    .line 1779
    :cond_1c
    if-eqz p2, :cond_33

    .line 1780
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1781
    const/16 v7, 0xff

    const/4 v9, 0x2

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move v8, v6

    invoke-virtual/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V

    .line 1782
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "sendPCWLockMessage : send SMS complete."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    :cond_33
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1b

    .line 1786
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1b
.end method

.method private showCmasDialog(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 9
    .parameter "messageUri"
    .parameter "cmascat"
    .parameter "msgBody"

    .prologue
    .line 905
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/CmasDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 906
    .local v0, cmasDialogIntent:Landroid/content/Intent;
    const-string v2, "msgIdentifier"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 907
    const-string v2, "body"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    const-string v2, "cmas_message_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    const/high16 v2, 0x1800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 911
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->handleCmasDialog(Landroid/content/Intent;)V

    .line 913
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 914
    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showCMASDialog, msgIdentifier="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgBody="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    .line 921
    .end local v0           #cmasDialogIntent:Landroid/content/Intent;
    :cond_4a
    :goto_4a
    return-void

    .line 915
    :catch_4b
    move-exception v1

    .line 916
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 917
    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in creating CMAS dialog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :cond_6a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4a
.end method

.method public static showNextCmasDialog(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1969
    sget-object v0, Lcom/android/mms/transaction/SmsReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1970
    sget-object v0, Lcom/android/mms/transaction/SmsReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 1971
    sget-object v0, Lcom/android/mms/transaction/SmsReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/SmsReceiverService$CmasDialogData;

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$CmasDialogData;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1973
    :cond_1b
    return-void
.end method

.method private storeCbMessage(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/SharedPreferences;)Landroid/net/Uri;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 1607
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "storeCbMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1634
    const-string v0, "pdus"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 1636
    if-eqz v0, :cond_1e

    array-length v1, v0

    if-ge v1, v2, :cond_25

    .line 1637
    :cond_1e
    const-string v1, "Mms/SmsReceiverService"

    const-string v5, "received SMS_CB_RECEIVED_ACTION with no pdus"

    invoke-static {v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    :cond_25
    aget-object v1, v0, v9

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsCbMessage;->createFromPdu([B)Landroid/telephony/SmsCbMessage;

    move-result-object v5

    .line 1643
    if-nez v5, :cond_4b

    .line 1644
    const-string v1, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to create SmsCbMessage from PDU: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    :cond_4b
    const-string v1, "pref_key_cb_channel_selection"

    const-string v6, "All channels"

    invoke-interface {p3, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1651
    const-string v6, "Mms/SmsReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chSelection : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    const-string v6, "My channel"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13c

    .line 1658
    const-string v1, "en"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    const-string v1, "pref_key_english"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_89

    move-object v0, v3

    .line 1711
    :goto_88
    return-object v0

    .line 1661
    :cond_89
    const-string v1, "de"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    const-string v1, "pref_key_german"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_9f

    move-object v0, v3

    .line 1662
    goto :goto_88

    .line 1664
    :cond_9f
    const-string v1, "it"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    const-string v1, "pref_key_italian"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_b5

    move-object v0, v3

    .line 1665
    goto :goto_88

    .line 1667
    :cond_b5
    const-string v1, "fr"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cb

    const-string v1, "pref_key_french"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_cb

    move-object v0, v3

    .line 1668
    goto :goto_88

    .line 1670
    :cond_cb
    const-string v1, "es"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const-string v1, "pref_key_spanish"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_e1

    move-object v0, v3

    .line 1671
    goto :goto_88

    .line 1673
    :cond_e1
    const-string v1, "nl"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f7

    const-string v1, "pref_key_dutch"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_f7

    move-object v0, v3

    .line 1674
    goto :goto_88

    .line 1676
    :cond_f7
    const-string v1, "sv"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10e

    const-string v1, "pref_key_swedish"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_10e

    move-object v0, v3

    .line 1677
    goto/16 :goto_88

    .line 1679
    :cond_10e
    const-string v1, "da"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_125

    const-string v1, "pref_key_danish"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_125

    move-object v0, v3

    .line 1680
    goto/16 :goto_88

    .line 1682
    :cond_125
    const-string v1, "pt"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13c

    const-string v1, "pref_key_portuguese"

    invoke-interface {p3, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_13c

    move-object v0, v3

    .line 1683
    goto/16 :goto_88

    .line 1694
    :cond_13c
    :goto_13c
    array-length v1, v0

    if-ge v2, v1, :cond_171

    .line 1695
    aget-object v1, v0, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsCbMessage;->createFromPdu([B)Landroid/telephony/SmsCbMessage;

    move-result-object v1

    .line 1696
    if-eqz v1, :cond_156

    .line 1697
    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/telephony/SmsCbMessage;->appendToBody(Ljava/lang/String;)V

    .line 1694
    :goto_152
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_13c

    .line 1699
    :cond_156
    const-string v1, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to append to SmsCbMessage from PDU: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v0, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_152

    .line 1703
    :cond_171
    const-string v0, "body"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    const-string v0, "address"

    const-string v1, "CBmessages"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1707
    const-string v0, "protocol"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1708
    const-string v0, "read"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1710
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1711
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0, v1, v4}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_88
.end method

.method private storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const v10, 0x7f090151

    const/16 v9, 0x14

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1080
    const-string v0, "Mms/SmsReceiverService"

    const-string v2, "storeMessage()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    aget-object v0, p2, v1

    .line 1087
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1088
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v6

    .line 1089
    const-string v2, "error_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1090
    array-length v7, p2

    .line 1093
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    .line 1095
    if-eqz v2, :cond_1b3

    iget-object v8, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v8, :cond_1b3

    .line 1096
    iget-object v2, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 1097
    const/16 v8, 0x1580

    if-eq v2, v8, :cond_66

    const/16 v8, 0x1581

    if-eq v2, v8, :cond_66

    const/16 v8, 0x1582

    if-eq v2, v8, :cond_66

    const/16 v8, 0x1583

    if-eq v2, v8, :cond_66

    const/16 v8, 0x1585

    if-eq v2, v8, :cond_66

    const/16 v8, 0x1586

    if-eq v2, v8, :cond_66

    const/16 v8, 0x1589

    if-eq v2, v8, :cond_66

    const/16 v8, 0x158a

    if-eq v2, v8, :cond_66

    const/16 v8, 0x15e1

    if-eq v2, v8, :cond_66

    const/16 v8, 0x15e3

    if-eq v2, v8, :cond_66

    const/16 v8, 0x2134

    if-eq v2, v8, :cond_66

    const/16 v8, 0x2135

    if-eq v2, v8, :cond_66

    const/16 v8, 0x2136

    if-ne v2, v8, :cond_157

    .line 1102
    :cond_66
    const-string v2, "<<"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    invoke-virtual {p0, v10}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    const-string v2, ">>\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    .line 1113
    :goto_78
    if-nez v2, :cond_93

    .line 1114
    if-ne v7, v4, :cond_161

    .line 1120
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 1122
    if-nez v1, :cond_158

    .line 1124
    const-string v1, "<<"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    invoke-virtual {p0, v10}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    const-string v1, ">>\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    :cond_93
    :goto_93
    const-string v1, "body"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v1, "thread_id"

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 1148
    const-string v1, "address"

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1150
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_171

    .line 1151
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    .line 1152
    if-eqz v4, :cond_c8

    .line 1154
    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c8

    .line 1155
    invoke-virtual {v4, v1}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->reload()V

    .line 1168
    :cond_c8
    :goto_c8
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v4

    .line 1170
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isCMASMessage()Z

    move-result v0

    if-eqz v0, :cond_17f

    const/16 v0, 0x1000

    if-ne v4, v0, :cond_17f

    .line 1171
    const-string v0, "Mms/SmsReceiverService"

    const-string v2, "storeMessage(), CMAS = TRUE, creating new thread"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    invoke-static {p1, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1175
    if-eqz v0, :cond_e9

    .line 1176
    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mCmasThreadId:Ljava/lang/Long;

    .line 1178
    :cond_e9
    const-string v1, "thread_id"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1191
    :goto_ee
    const-string v1, "thread_id"

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mStringThreadId:Ljava/lang/String;

    .line 1195
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1199
    const-string v2, "ril.sms.gcf-mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1201
    const-string v4, "On"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    .line 1202
    const-string v2, "Mms/SmsReceiverService"

    const-string v4, "GCF Mode On"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    sget v2, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 1205
    sget v2, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    if-gt v2, v9, :cond_1a0

    .line 1206
    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmsConfig.SMS_DB_COUNT : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v1, v2, v6}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1211
    sget v2, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    if-ne v2, v9, :cond_147

    .line 1212
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/SmsReceiverService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1228
    :cond_147
    :goto_147
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    move-object v3, v1

    .line 1230
    :cond_157
    return-object v3

    .line 1128
    :cond_158
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_93

    .line 1133
    :cond_161
    :goto_161
    if-ge v1, v7, :cond_93

    .line 1134
    aget-object v2, p2, v1

    .line 1135
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_161

    .line 1162
    :cond_171
    new-instance v1, Ljava/lang/String;

    const-string v4, "Unknown"

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1163
    const-string v4, "address"

    invoke-virtual {v6, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c8

    .line 1181
    :cond_17f
    if-eqz v2, :cond_18b

    const-wide/16 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v0, v4, v7

    if-nez v0, :cond_1b0

    :cond_18b
    if-eqz v1, :cond_1b0

    .line 1182
    invoke-static {p1, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1184
    if-eqz v0, :cond_199

    .line 1185
    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mCmasThreadId:Ljava/lang/Long;

    .line 1188
    :cond_199
    const-string v1, "thread_id"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_ee

    :cond_1a0
    move-object v1, v3

    .line 1216
    goto :goto_147

    .line 1220
    :cond_1a2
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "GCF Mode Off"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v1, v2, v6}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_147

    :cond_1b0
    move-object v0, v2

    goto/16 :goto_ee

    :cond_1b3
    move v2, v1

    goto/16 :goto_78
.end method

.method private unRegisterForRoamingStatusChanges()V
    .registers 3

    .prologue
    .line 1757
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "unRegisterForRoamingStatusChanges"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    :try_start_7
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1761
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_12} :catch_13

    .line 1765
    :goto_12
    return-void

    .line 1762
    :catch_13
    move-exception v0

    goto :goto_12
.end method

.method private unRegisterForServiceStateChanges()V
    .registers 3

    .prologue
    .line 1730
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1731
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "unRegisterForServiceStateChanges"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1735
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_18} :catch_19

    .line 1739
    :goto_18
    return-void

    .line 1736
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method private updateGroupType(Landroid/net/Uri;I)Z
    .registers 20
    .parameter "uri"
    .parameter "resultCode"

    .prologue
    .line 522
    const/4 v2, 0x6

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    .line 523
    const/4 v2, 0x1

    .line 575
    :cond_6
    :goto_6
    return v2

    .line 525
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 526
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_f

    .line 527
    const/4 v2, 0x1

    goto :goto_6

    .line 529
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    .line 530
    .local v13, msgId:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 531
    const/4 v2, 0x1

    goto :goto_6

    .line 533
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group_id=(SELECT group_id FROM sms WHERE _id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AND _id!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 535
    .local v5, selection:Ljava/lang/String;
    const/4 v9, 0x0

    .line 537
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_39
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->GROUP_SMS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 540
    if-eqz v9, :cond_52

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_4e
    .catchall {:try_start_39 .. :try_end_4e} :catchall_ba

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_59

    .line 541
    :cond_52
    const/4 v2, 0x1

    .line 571
    if-eqz v9, :cond_6

    .line 572
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 543
    :cond_59
    :try_start_59
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 544
    const/4 v8, 0x0

    .line 545
    .local v8, count:I
    const/4 v12, 0x0

    .line 546
    .local v12, isFailed:Z
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 548
    .local v10, group_id:J
    :cond_66
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 549
    .local v15, type:I
    packed-switch v15, :pswitch_data_c2

    .line 556
    :goto_6e
    :pswitch_6e
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_66

    .line 558
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_77
    .catchall {:try_start_59 .. :try_end_77} :catchall_ba

    move-result v2

    if-ge v8, v2, :cond_85

    .line 559
    const/4 v2, 0x0

    .line 571
    if-eqz v9, :cond_6

    .line 572
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 551
    :pswitch_81
    const/4 v12, 0x1

    .line 553
    :pswitch_82
    add-int/lit8 v8, v8, 0x1

    goto :goto_6e

    .line 561
    :cond_85
    const/4 v14, 0x5

    .line 562
    .local v14, newType:I
    if-nez v12, :cond_8e

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_8e

    .line 563
    const/4 v14, 0x2

    .line 565
    :cond_8e
    :try_start_8e
    new-instance v16, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 566
    .local v16, values:Landroid/content/ContentValues;
    const-string v2, "group_type"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_8e .. :try_end_b2} :catchall_ba

    .line 571
    .end local v8           #count:I
    .end local v10           #group_id:J
    .end local v12           #isFailed:Z
    .end local v14           #newType:I
    .end local v15           #type:I
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_b2
    if-eqz v9, :cond_b7

    .line 572
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 575
    :cond_b7
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 571
    :catchall_ba
    move-exception v2

    if-eqz v9, :cond_c0

    .line 572
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_c0
    throw v2

    .line 549
    nop

    :pswitch_data_c2
    .packed-switch 0x2
        :pswitch_82
        :pswitch_6e
        :pswitch_6e
        :pswitch_81
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 200
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Mms/SmsReceiverService"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 201
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 203
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 204
    new-instance v2, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 240
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    .line 219
    if-eqz p1, :cond_19

    .line 220
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 222
    if-eqz p1, :cond_17

    const-string v3, "result"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_17
    iput v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    .line 226
    .end local v0           #action:Ljava/lang/String;
    :cond_19
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 227
    .local v1, msg:Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 228
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 229
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v2, v1}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    const/4 v2, 0x2

    return v2
.end method

.method public declared-synchronized sendFirstQueuedMessage()V
    .registers 19

    .prologue
    .line 456
    monitor-enter p0

    :try_start_1
    const-string v1, "Mms/SmsReceiverService"

    const-string v5, "sendFirstQueuedMessage()"

    invoke-static {v1, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const/16 v16, 0x1

    .line 460
    .local v16, success:Z
    const-string v1, "content://sms/queued"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 461
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 462
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date ASC"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_ea

    move-result-object v12

    .line 466
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_a7

    .line 468
    :try_start_22
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 469
    const/4 v1, 0x3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 470
    .local v7, msgText:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 471
    .local v6, address:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 472
    .local v17, threadId:I
    const/4 v1, 0x4

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 474
    .local v15, status:I
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 475
    .local v14, msgId:I
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, v14

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 477
    .local v11, msgUri:Landroid/net/Uri;
    new-instance v4, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v17

    int-to-long v8, v0

    const/16 v1, 0x20

    if-ne v15, v1, :cond_b7

    const/4 v10, 0x1

    :goto_52
    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;)V

    .line 480
    .local v4, sender:Lcom/android/mms/transaction/SmsMessageSender;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 481
    const-string v1, "Mms/SmsReceiverService"

    const-string v5, "sendFirstQueuedMessage..."

    invoke-static {v1, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v1, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendFirstQueuedMessage "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", address: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", threadId: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", body: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_22 .. :try_end_9c} :catchall_e5

    .line 486
    :cond_9c
    const-wide/16 v8, -0x1

    :try_start_9e
    invoke-virtual {v4, v8, v9}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->sendMessage(J)Z

    .line 487
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z
    :try_end_a4
    .catchall {:try_start_9e .. :try_end_a4} :catchall_e5
    .catch Lcom/google/android/mms/MmsException; {:try_start_9e .. :try_end_a4} :catch_b9

    .line 498
    .end local v4           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v6           #address:Ljava/lang/String;
    .end local v7           #msgText:Ljava/lang/String;
    .end local v11           #msgUri:Landroid/net/Uri;
    .end local v14           #msgId:I
    .end local v15           #status:I
    .end local v17           #threadId:I
    :cond_a4
    :goto_a4
    :try_start_a4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_a7
    if-eqz v16, :cond_b5

    .line 504
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V

    .line 505
    invoke-static {}, Lcom/android/mms/MmsConfig;->getInternational_SMS_Guard()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForRoamingStatusChanges()V
    :try_end_b5
    .catchall {:try_start_a4 .. :try_end_b5} :catchall_ea

    .line 509
    :cond_b5
    monitor-exit p0

    return-void

    .line 477
    .restart local v6       #address:Ljava/lang/String;
    .restart local v7       #msgText:Ljava/lang/String;
    .restart local v11       #msgUri:Landroid/net/Uri;
    .restart local v14       #msgId:I
    .restart local v15       #status:I
    .restart local v17       #threadId:I
    :cond_b7
    const/4 v10, 0x0

    goto :goto_52

    .line 488
    .restart local v4       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :catch_b9
    move-exception v13

    .line 489
    .local v13, e:Lcom/google/android/mms/MmsException;
    :try_start_ba
    const-string v1, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendFirstQueuedMessage: failed to send message "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", caught "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    .line 493
    const/4 v1, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1, v5}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZ)V
    :try_end_e2
    .catchall {:try_start_ba .. :try_end_e2} :catchall_e5

    .line 494
    const/16 v16, 0x0

    goto :goto_a4

    .line 498
    .end local v4           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v6           #address:Ljava/lang/String;
    .end local v7           #msgText:Ljava/lang/String;
    .end local v11           #msgUri:Landroid/net/Uri;
    .end local v13           #e:Lcom/google/android/mms/MmsException;
    .end local v14           #msgId:I
    .end local v15           #status:I
    .end local v17           #threadId:I
    :catchall_e5
    move-exception v1

    :try_start_e6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_ea
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_ea

    .line 456
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v16           #success:Z
    :catchall_ea
    move-exception v1

    monitor-exit p0

    throw v1
.end method
