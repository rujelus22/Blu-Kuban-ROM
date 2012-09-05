.class public Lcom/vlingo/client/safereader/SMSReader;
.super Landroid/content/BroadcastReceiver;
.source "SMSReader.java"


# static fields
.field private static final ACTION_MMS_RECEIVED:Ljava/lang/String; = "com.android.mms.MMS_BR_FOR_VLINGO"

.field private static final ACTION_SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/safereader/SMSReader;Landroid/os/Bundle;Landroid/content/Context;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/safereader/SMSReader;->handleIncomingSMS(Landroid/os/Bundle;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/safereader/SMSReader;Landroid/os/Bundle;Landroid/content/Context;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/safereader/SMSReader;->handleIncomingMMS(Landroid/os/Bundle;Landroid/content/Context;)V

    return-void
.end method

.method private handleIncomingMMS(Landroid/os/Bundle;Landroid/content/Context;)V
    .registers 15
    .parameter "bundle"
    .parameter "context"

    .prologue
    .line 163
    const-string v8, "address"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, address:Ljava/lang/String;
    const-string v8, "subject"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, subject:Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_15

    .line 203
    :cond_14
    :goto_14
    return-void

    .line 170
    :cond_15
    invoke-virtual {p0, v0, p2}, Lcom/vlingo/client/safereader/SMSReader;->getNameFromNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, from:Ljava/lang/String;
    invoke-static {v0, v2, v7}, Lcom/vlingo/client/safereader/MessageContext;->newMMSContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/safereader/MessageContext;

    move-result-object v3

    .line 177
    .local v3, msgContext:Lcom/vlingo/client/safereader/MessageContext;
    invoke-static {v3}, Lcom/vlingo/client/core/tts/TTSDemand;->genMMSReadback(Lcom/vlingo/client/safereader/MessageContext;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v8

    invoke-static {v8}, Lcom/vlingo/client/core/tts/TTSRequest2;->genRequest(Lcom/vlingo/client/core/tts/TTSDemand;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v4

    .line 179
    .local v4, req:Lcom/vlingo/client/core/tts/TTSRequest2;
    if-eqz v4, :cond_14

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 187
    .local v5, start:J
    :goto_2b
    invoke-static {}, Lcom/vlingo/client/safereader/MessageReadbackListener;->getSharedInstance()Lcom/vlingo/client/safereader/MessageReadbackListener;

    move-result-object v8

    if-nez v8, :cond_47

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    add-long/2addr v10, v5

    cmp-long v8, v8, v10

    if-gez v8, :cond_47

    .line 191
    const-wide/16 v8, 0xfa

    :try_start_3e
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_2b

    .line 192
    :catch_42
    move-exception v1

    .line 193
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2b

    .line 197
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_47
    invoke-static {}, Lcom/vlingo/client/safereader/MessageReadbackListener;->getSharedInstance()Lcom/vlingo/client/safereader/MessageReadbackListener;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 198
    invoke-static {}, Lcom/vlingo/client/safereader/MessageReadbackListener;->getSharedInstance()Lcom/vlingo/client/safereader/MessageReadbackListener;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/vlingo/client/safereader/MessageReadbackListener;->processTTSRequest(Lcom/vlingo/client/core/tts/TTSRequest2;)V

    goto :goto_14
.end method

.method private handleIncomingSMS(Landroid/os/Bundle;Landroid/content/Context;)V
    .registers 22
    .parameter "bundle"
    .parameter "context"

    .prologue
    .line 90
    const-string v15, "pdus"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/Object;

    move-object v11, v15

    check-cast v11, [Ljava/lang/Object;

    .line 91
    .local v11, pdus:[Ljava/lang/Object;
    if-eqz v11, :cond_12

    array-length v15, v11

    if-nez v15, :cond_13

    .line 157
    :cond_12
    :goto_12
    return-void

    .line 94
    :cond_13
    const/4 v9, 0x0

    .line 95
    .local v9, msg:Landroid/telephony/SmsMessage;
    const-string v2, ""

    .line 96
    .local v2, body:Ljava/lang/String;
    const-string v6, ""

    .line 97
    .local v6, from:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_19
    array-length v15, v11

    if-ge v8, v15, :cond_6a

    .line 100
    aget-object v15, v11, v8

    check-cast v15, [B

    move-object v4, v15

    check-cast v4, [B

    .line 102
    .local v4, data:[B
    if-eqz v4, :cond_46

    array-length v15, v4

    if-eqz v15, :cond_46

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v9

    if-eqz v9, :cond_46

    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .local v3, bodyPart:Ljava/lang/String;
    if-eqz v3, :cond_46

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_46

    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    .local v7, fromPart:Ljava/lang/String;
    if-eqz v7, :cond_46

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_49

    .line 97
    .end local v3           #bodyPart:Ljava/lang/String;
    .end local v7           #fromPart:Ljava/lang/String;
    :cond_46
    :goto_46
    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    .line 112
    .restart local v3       #bodyPart:Ljava/lang/String;
    .restart local v7       #fromPart:Ljava/lang/String;
    :cond_49
    const-string v15, ""

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_57

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_57

    .line 116
    :cond_57
    move-object v6, v7

    .line 117
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_46

    .line 120
    .end local v3           #bodyPart:Ljava/lang/String;
    .end local v4           #data:[B
    .end local v7           #fromPart:Ljava/lang/String;
    :cond_6a
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v15}, Lcom/vlingo/client/safereader/SMSReader;->isSpamMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_12

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lcom/vlingo/client/safereader/SMSReader;->getNameFromNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v6, v2}, Lcom/vlingo/client/safereader/MessageContext;->newSMSContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/safereader/MessageContext;

    move-result-object v10

    .line 131
    .local v10, msgContext:Lcom/vlingo/client/safereader/MessageContext;
    invoke-static {v10}, Lcom/vlingo/client/core/tts/TTSDemand;->genSMSReadback(Lcom/vlingo/client/safereader/MessageContext;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v15

    invoke-static {v15}, Lcom/vlingo/client/core/tts/TTSRequest2;->genRequest(Lcom/vlingo/client/core/tts/TTSDemand;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v12

    .line 133
    .local v12, req:Lcom/vlingo/client/core/tts/TTSRequest2;
    if-eqz v12, :cond_12

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 141
    .local v13, start:J
    :goto_96
    invoke-static {}, Lcom/vlingo/client/safereader/MessageReadbackListener;->getSharedInstance()Lcom/vlingo/client/safereader/MessageReadbackListener;

    move-result-object v15

    if-nez v15, :cond_b3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x2710

    add-long v17, v17, v13

    cmp-long v15, v15, v17

    if-gez v15, :cond_b3

    .line 145
    const-wide/16 v15, 0xfa

    :try_start_aa
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ad
    .catch Ljava/lang/InterruptedException; {:try_start_aa .. :try_end_ad} :catch_ae

    goto :goto_96

    .line 146
    :catch_ae
    move-exception v5

    .line 147
    .local v5, e:Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_96

    .line 151
    .end local v5           #e:Ljava/lang/InterruptedException;
    :cond_b3
    invoke-static {}, Lcom/vlingo/client/safereader/MessageReadbackListener;->getSharedInstance()Lcom/vlingo/client/safereader/MessageReadbackListener;

    move-result-object v15

    if-eqz v15, :cond_12

    .line 152
    invoke-static {}, Lcom/vlingo/client/safereader/MessageReadbackListener;->getSharedInstance()Lcom/vlingo/client/safereader/MessageReadbackListener;

    move-result-object v15

    invoke-virtual {v15, v12}, Lcom/vlingo/client/safereader/MessageReadbackListener;->processTTSRequest(Lcom/vlingo/client/core/tts/TTSRequest2;)V

    goto/16 :goto_12
.end method

.method private isSpamMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "context"
    .parameter "mdn"
    .parameter "text"

    .prologue
    .line 250
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isJKBuild()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MDN"

    invoke-static {p1, v0, v1, p2}, Lcom/vlingo/client/util/SpamUtil;->isSpamMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "TEXT"

    invoke-static {p1, v0, v1, p3}, Lcom/vlingo/client/util/SpamUtil;->isSpamMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method


# virtual methods
.method public getNameFromNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 19
    .parameter "number"
    .parameter "context"

    .prologue
    .line 206
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "display_name"

    aput-object v1, v2, v0

    .line 207
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 208
    .local v7, cur:Landroid/database/Cursor;
    move-object/from16 v14, p1

    .line 210
    .local v14, returnValue:Ljava/lang/String;
    :try_start_b
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 211
    .local v8, formatted:Ljava/lang/String;
    const/4 v11, 0x0

    .line 212
    .local v11, lookup:Ljava/lang/StringBuffer;
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 213
    new-instance v11, Ljava/lang/StringBuffer;

    .end local v11           #lookup:Ljava/lang/StringBuffer;
    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .restart local v11       #lookup:Ljava/lang/StringBuffer;
    :cond_1b
    const/4 v9, 0x0

    .local v9, idx:I
    move v10, v9

    .line 215
    .end local v9           #idx:I
    .local v10, idx:I
    :goto_1d
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v10, v0, :cond_4e

    .line 216
    add-int/lit8 v9, v10, 0x1

    .end local v10           #idx:I
    .restart local v9       #idx:I
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 217
    .local v6, c:C
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 218
    if-nez v11, :cond_36

    .line 219
    new-instance v11, Ljava/lang/StringBuffer;

    .end local v11           #lookup:Ljava/lang/StringBuffer;
    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 221
    .restart local v11       #lookup:Ljava/lang/StringBuffer;
    :cond_36
    const/16 v0, 0x25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3b
    :goto_3b
    move v10, v9

    .line 225
    .end local v9           #idx:I
    .restart local v10       #idx:I
    goto :goto_1d

    .line 222
    .end local v10           #idx:I
    .restart local v9       #idx:I
    :cond_3d
    if-eqz v11, :cond_3b

    .line 223
    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_42} :catch_43

    goto :goto_3b

    .line 241
    .end local v6           #c:C
    .end local v8           #formatted:Ljava/lang/String;
    .end local v9           #idx:I
    .end local v11           #lookup:Ljava/lang/StringBuffer;
    :catch_43
    move-exception v15

    .line 242
    .local v15, s:Landroid/database/sqlite/SQLiteException;
    const-string v0, "VLG_EXCEPTION"

    invoke-static {v15}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v15           #s:Landroid/database/sqlite/SQLiteException;
    :cond_4d
    :goto_4d
    return-object v14

    .line 226
    .restart local v8       #formatted:Ljava/lang/String;
    .restart local v10       #idx:I
    .restart local v11       #lookup:Ljava/lang/StringBuffer;
    :cond_4e
    if-eqz v11, :cond_54

    .line 227
    :try_start_50
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 228
    :cond_54
    if-eqz v8, :cond_7b

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data1 like \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 232
    :cond_7b
    invoke-static {v7}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 233
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 234
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 235
    .local v13, nameColumn:I
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 236
    .local v12, name:Ljava/lang/String;
    if-eqz v12, :cond_9a

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9a

    .line 237
    move-object v14, v12

    .line 239
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #nameColumn:I
    :cond_9a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_9d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_50 .. :try_end_9d} :catch_43

    goto :goto_4d
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 46
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSafeReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSMSReadbackEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    .line 85
    :cond_10
    :goto_10
    return-void

    .line 51
    :cond_11
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    .line 53
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vlingo/client/safereader/SMSReader$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/vlingo/client/safereader/SMSReader$1;-><init>(Lcom/vlingo/client/safereader/SMSReader;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_10
.end method
