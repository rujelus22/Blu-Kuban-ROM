.class public Lcom/android/samsungtest/FactoryTest/MmiCheck;
.super Landroid/content/BroadcastReceiver;
.source "MmiCheck.java"


# instance fields
.field private final READDATA:I

.field private final RETURNDATA:I

.field private final SMSINPUT:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIntent:Landroid/content/Intent;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final sms:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    const-string v0, "content://sms"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/MmiCheck;->sms:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/MmiCheck;->READDATA:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/MmiCheck;->SMSINPUT:I

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/MmiCheck;->RETURNDATA:I

    return-void
.end method

.method private readData(Ljava/lang/String;)V
    .registers 8
    .parameter "data"

    .prologue
    .line 114
    const/16 v0, 0x12

    .line 115
    .local v0, fcmd:I
    const/16 v1, 0x8

    .line 116
    .local v1, scmd:I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/samsungtest/FactoryTest/MmiCheck;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 117
    const-string v2, "MMI Check"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendData(fcmd,scmd,data) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/samsungtest/FactoryTest/MmiCheck;->sendData(IILjava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/MmiCheck;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/samsungtest/FactoryTest/MmiCheck;->sendData(IILjava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 119
    return-void
.end method

.method private sendData(IILjava/lang/String;)[B
    .registers 8
    .parameter "firstCmd"
    .parameter "secondCmd"
    .parameter "data"

    .prologue
    .line 121
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 122
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 124
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_a
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 125
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 126
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 127
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1c} :catch_21

    .line 131
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_20
    return-object v3

    .line 128
    :catch_21
    move-exception v2

    .line 129
    .local v2, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_20
.end method

.method private smsInput()Z
    .registers 16

    .prologue
    .line 73
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 74
    .local v11, values:Landroid/content/ContentValues;
    iget-object v12, p0, Lcom/android/samsungtest/FactoryTest/MmiCheck;->mIntent:Landroid/content/Intent;

    const-string v13, "DATA"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, data:Ljava/lang/String;
    const-string v12, "MMI Check"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SMS input Data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :try_start_25
    iget-object v12, p0, Lcom/android/samsungtest/FactoryTest/MmiCheck;->mIntent:Landroid/content/Intent;

    const-string v13, "SMS"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 78
    .local v10, type:I
    const/4 v12, 0x3

    new-array v5, v12, [B

    fill-array-data v5, :array_e8

    .line 79
    .local v5, head:[B
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 80
    .local v6, headTxt:Ljava/lang/String;
    const/4 v12, 0x2

    new-array v3, v12, [B

    fill-array-data v3, :array_ee

    .line 81
    .local v3, end:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 83
    .local v4, endTxt:Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, number:[Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v12, v8, v12

    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, body:[Ljava/lang/String;
    const-string v12, "address"

    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    packed-switch v10, :pswitch_data_f4

    .line 101
    :goto_5d
    const-string v12, "date"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    const/4 v12, 0x0

    aget-object v12, v0, v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 103
    .local v9, tmp:[B
    const/4 v7, 0x0

    .local v7, i:I
    :goto_76
    array-length v12, v9

    if-ge v7, v12, :cond_d0

    aget-byte v12, v9, v7

    const/4 v13, 0x2

    if-ne v12, v13, :cond_82

    const/16 v12, 0x20

    aput-byte v12, v9, v7

    :cond_82
    add-int/lit8 v7, v7, 0x1

    goto :goto_76

    .line 89
    .end local v7           #i:I
    .end local v9           #tmp:[B
    :pswitch_85
    const-string v12, "type"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_8f} :catch_90

    goto :goto_5d

    .line 106
    .end local v0           #body:[Ljava/lang/String;
    .end local v3           #end:[B
    .end local v4           #endTxt:Ljava/lang/String;
    .end local v5           #head:[B
    .end local v6           #headTxt:Ljava/lang/String;
    .end local v8           #number:[Ljava/lang/String;
    .end local v10           #type:I
    :catch_90
    move-exception v2

    .line 107
    .local v2, e:Ljava/lang/Exception;
    const-string v12, "MMI Check"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SMS input err\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v12, 0x0

    .line 110
    .end local v2           #e:Ljava/lang/Exception;
    :goto_ae
    return v12

    .line 92
    .restart local v0       #body:[Ljava/lang/String;
    .restart local v3       #end:[B
    .restart local v4       #endTxt:Ljava/lang/String;
    .restart local v5       #head:[B
    .restart local v6       #headTxt:Ljava/lang/String;
    .restart local v8       #number:[Ljava/lang/String;
    .restart local v10       #type:I
    :pswitch_af
    :try_start_af
    const-string v12, "type"

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5d

    .line 95
    :pswitch_ba
    const-string v12, "type"

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5d

    .line 98
    :pswitch_c5
    const-string v12, "type"

    const/4 v13, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5d

    .line 104
    .restart local v7       #i:I
    .restart local v9       #tmp:[B
    :cond_d0
    const-string v12, "body"

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v12, p0, Lcom/android/samsungtest/FactoryTest/MmiCheck;->mContentResolver:Landroid/content/ContentResolver;

    const-string v13, "content://sms"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_e5} :catch_90

    .line 110
    const/4 v12, 0x1

    goto :goto_ae

    .line 78
    nop

    :array_e8
    .array-data 0x1
        0x2ct
        0x22t
        0x2t
    .end array-data

    .line 80
    :array_ee
    .array-data 0x1
        0x3t
        0x22t
    .end array-data

    .line 87
    nop

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_85
        :pswitch_af
        :pswitch_ba
        :pswitch_c5
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0x3e8

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/samsungtest/FactoryTest/MmiCheck;->mContentResolver:Landroid/content/ContentResolver;

    .line 41
    iput-object p2, p0, Lcom/android/samsungtest/FactoryTest/MmiCheck;->mIntent:Landroid/content/Intent;

    .line 42
    const/4 v2, 0x0

    .line 45
    .local v2, result:Z
    :try_start_b
    const-string v4, "TYPE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_31

    move-result v3

    .line 50
    .local v3, type:I
    const-string v4, "MMI Check"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter Type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    packed-switch v3, :pswitch_data_9e

    .line 70
    .end local v3           #type:I
    :goto_30
    return-void

    .line 46
    :catch_31
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MMI Check"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter Type error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 53
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #type:I
    :pswitch_4f
    const-string v4, "MMI Check"

    const-string v5, "SMS input start"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/MmiCheck;->smsInput()Z

    move-result v2

    .line 55
    if-eqz v2, :cond_6d

    const-string v4, "MMI Check: SMS saved"

    invoke-static {p1, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 57
    :goto_65
    const-string v4, "MMI Check"

    const-string v5, "SMS input end"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 56
    :cond_6d
    const-string v4, "MMI Check: SMS saved error"

    invoke-static {p1, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_65

    .line 60
    :pswitch_77
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v1, i:Landroid/content/Intent;
    const-string v4, "com.android.samsungtest.FactoryTest.MMICHECK_READDATA"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_30

    .line 65
    .end local v1           #i:Landroid/content/Intent;
    :pswitch_85
    const-string v4, "MMI Check"

    const-string v5, "Send Data start"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v4, "DATA"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/samsungtest/FactoryTest/MmiCheck;->readData(Ljava/lang/String;)V

    .line 67
    const-string v4, "MMI Check"

    const-string v5, "Send Data end"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 51
    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_77
        :pswitch_4f
        :pswitch_85
    .end packed-switch
.end method
