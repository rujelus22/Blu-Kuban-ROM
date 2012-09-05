.class public Lcom/locationlabs/v3client/util/SMSNotificationListener;
.super Landroid/content/BroadcastReceiver;
.source "a"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/16 v0, -0x1b

    sput v0, Lcom/locationlabs/v3client/util/SMSNotificationListener;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 47
    const-string v0, "notf\'n?"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 54
    :try_start_15
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_1e} :catch_5c

    .line 55
    :try_start_1e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 56
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.locationlabs.metadata.ACTION_SMS_NOTIFICATION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_2f} :catch_1d2

    move-result-object v2

    .line 58
    :try_start_30
    const-string v3, "SMS_PORT"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ln;->a(Ljava/lang/String;I)I
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_36} :catch_1da

    move-result v3

    .line 59
    if-ne v3, v7, :cond_41

    :try_start_39
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.locationlabs.metadata.SMS_PORT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 61
    :cond_41
    const-string v4, "SMS_SCHEME"

    invoke-static {v4}, Ln;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_46} :catch_1e1

    move-result-object v4

    .line 63
    if-nez v4, :cond_1ee

    :try_start_49
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.locationlabs.metadata.SCHEME"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_49 .. :try_end_50} :catch_1e7

    move-result-object v0

    :goto_51
    move v4, v3

    move-object v3, v2

    move-object v2, v0

    .line 68
    :goto_54
    if-ne v4, v7, :cond_85

    .line 69
    const-string v0, "no port? no meta-data?"

    invoke-static {v0}, Li;->e(Ljava/lang/String;)V

    .line 165
    :cond_5b
    :goto_5b
    return-void

    .line 64
    :catch_5c
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    move v3, v7

    move-object v4, v6

    .line 65
    :goto_61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find receiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_54

    .line 75
    :cond_85
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    if-nez v0, :cond_91

    .line 77
    const-string v0, "??sms !bundle"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_5b

    .line 81
    :cond_91
    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 82
    if-nez v0, :cond_a1

    .line 83
    const-string v0, "??sms !pdus"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_5b

    .line 87
    :cond_a1
    array-length v5, v0

    .line 89
    if-eq v5, v10, :cond_ba

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "??pdus.length="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->c(Ljava/lang/String;)V

    :cond_ba
    move v6, v8

    move v7, v8

    .line 91
    :goto_bc
    if-ge v6, v5, :cond_1ab

    .line 92
    aget-object v1, v0, v6

    if-nez v1, :cond_e3

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "??pdu["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "]nul"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V

    move v1, v7

    .line 91
    :goto_df
    add-int/lit8 v6, v6, 0x1

    move v7, v1

    goto :goto_bc

    .line 97
    :cond_e3
    aget-object v1, v0, v6

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 99
    if-nez v1, :cond_10b

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "??msg "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " nul"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V

    move v1, v7

    .line 101
    goto :goto_df

    .line 104
    :cond_10b
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 106
    if-nez v1, :cond_12f

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "??body["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "] nul"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V

    move v1, v7

    .line 108
    goto :goto_df

    .line 114
    :cond_12f
    :try_start_12f
    new-instance v8, Lem;

    const/4 v9, 0x0

    invoke-direct {v8, v2, v4, v9}, Lem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v8, v1}, Lem;->a(Ljava/lang/String;)Lek;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_16f

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMS type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lek;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " received "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Li;->c(Ljava/lang/String;)V
    :try_end_15f
    .catch Ldn; {:try_start_12f .. :try_end_15f} :catch_188
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_15f} :catch_1a2

    .line 135
    :try_start_15f
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    const-string v8, "com.locationlabs.extra.SMS_NOTIFICATION"

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    invoke-static {p1, v7}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_16c
    .catch Ldn; {:try_start_15f .. :try_end_16c} :catch_188
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_16c} :catch_1cf

    move v1, v10

    .line 140
    goto/16 :goto_df

    .line 142
    :cond_16f
    :try_start_16f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!control "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->c(Ljava/lang/String;)V
    :try_end_185
    .catch Ldn; {:try_start_16f .. :try_end_185} :catch_188
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_185} :catch_1a2

    move v1, v7

    .line 150
    goto/16 :goto_df

    .line 144
    :catch_188
    move-exception v1

    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMS:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V

    move v1, v10

    .line 150
    goto/16 :goto_df

    .line 148
    :catch_1a2
    move-exception v1

    .line 149
    :goto_1a3
    const-string v8, "Unexpected exception processing message"

    invoke-static {v8, v1}, Li;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v7

    goto/16 :goto_df

    :cond_1ab
    move v0, v7

    .line 157
    :goto_1ac
    if-eqz v0, :cond_5b

    .line 163
    invoke-virtual {p0}, Lcom/locationlabs/v3client/util/SMSNotificationListener;->abortBroadcast()V

    goto/16 :goto_5b

    .line 154
    :cond_1b3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?? SMSNotificationListener action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    move v0, v8

    goto :goto_1ac

    .line 148
    :catch_1cf
    move-exception v1

    move v7, v10

    goto :goto_1a3

    .line 64
    :catch_1d2
    move-exception v1

    move-object v2, v6

    move v3, v7

    move-object v4, v0

    move-object v0, v1

    move-object v1, v6

    goto/16 :goto_61

    :catch_1da
    move-exception v1

    move v3, v7

    move-object v4, v0

    move-object v0, v1

    move-object v1, v6

    goto/16 :goto_61

    :catch_1e1
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    move-object v1, v6

    goto/16 :goto_61

    :catch_1e7
    move-exception v1

    move-object v11, v1

    move-object v1, v4

    move-object v4, v0

    move-object v0, v11

    goto/16 :goto_61

    :cond_1ee
    move-object v0, v4

    goto/16 :goto_51
.end method
