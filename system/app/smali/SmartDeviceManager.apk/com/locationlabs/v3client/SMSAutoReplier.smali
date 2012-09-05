.class public Lcom/locationlabs/v3client/SMSAutoReplier;
.super Landroid/content/BroadcastReceiver;
.source "a"


# static fields
.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z

.field private static c:Ldg;

.field private static d:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/locationlabs/v3client/SMSAutoReplier;->a:Ljava/util/Set;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/locationlabs/v3client/SMSAutoReplier;->b:Z

    .line 41
    sput-object v1, Lcom/locationlabs/v3client/SMSAutoReplier;->c:Ldg;

    .line 42
    sput-object v1, Lcom/locationlabs/v3client/SMSAutoReplier;->d:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 160
    sget-object v0, Lcom/locationlabs/v3client/SMSAutoReplier;->a:Ljava/util/Set;

    monitor-enter v0

    .line 161
    :try_start_3
    const-string v1, "Disabling SMSAutoReplier"

    invoke-static {v1}, Li;->c(Ljava/lang/String;)V

    .line 162
    const-class v1, Lcom/locationlabs/v3client/SMSAutoReplier;

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lf;->a(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 163
    const/4 v1, 0x0

    sput-boolean v1, Lcom/locationlabs/v3client/SMSAutoReplier;->b:Z

    .line 164
    sget-object v1, Lcom/locationlabs/v3client/SMSAutoReplier;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 165
    const/4 v1, 0x0

    sput-object v1, Lcom/locationlabs/v3client/SMSAutoReplier;->d:Ljava/lang/Integer;

    .line 168
    const-class v1, Lcom/locationlabs/v3client/SMSAutoReplier;

    invoke-static {p0, v1}, Lcom/locationlabs/util/android/SMSSender;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 169
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;Ldg;Ljava/lang/Integer;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    sget-object v0, Lcom/locationlabs/v3client/SMSAutoReplier;->a:Ljava/util/Set;

    monitor-enter v0

    .line 148
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabling SMSAutoReplier for feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and app id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->c(Ljava/lang/String;)V

    .line 149
    sput-object p1, Lcom/locationlabs/v3client/SMSAutoReplier;->c:Ldg;

    .line 150
    sput-object p2, Lcom/locationlabs/v3client/SMSAutoReplier;->d:Ljava/lang/Integer;

    .line 151
    const-class v1, Lcom/locationlabs/v3client/SMSAutoReplier;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lf;->a(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 152
    sget-boolean v1, Lcom/locationlabs/v3client/SMSAutoReplier;->b:Z

    if-nez v1, :cond_36

    .line 153
    sget-object v1, Lcom/locationlabs/v3client/SMSAutoReplier;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 155
    :cond_36
    const/4 v1, 0x1

    sput-boolean v1, Lcom/locationlabs/v3client/SMSAutoReplier;->b:Z

    .line 156
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 115
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_12
    :try_start_12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_18} :catch_20

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1e

    move v0, v3

    .line 130
    :goto_1d
    return v0

    :cond_1e
    move v0, v2

    .line 128
    goto :goto_1d

    .line 127
    :catch_20
    move-exception v0

    move v0, v2

    goto :goto_1d
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 47
    sget-object v2, Lcom/locationlabs/v3client/SMSAutoReplier;->a:Ljava/util/Set;

    monitor-enter v2

    .line 48
    :try_start_4
    sget-boolean v0, Lcom/locationlabs/v3client/SMSAutoReplier;->b:Z

    if-eqz v0, :cond_a5

    .line 49
    if-eqz p2, :cond_a5

    .line 50
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_a5

    .line 53
    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 54
    if-eqz v0, :cond_a5

    move v3, v7

    .line 55
    :goto_27
    array-length v1, v0

    if-ge v3, v1, :cond_a5

    .line 56
    aget-object v1, v0, v3

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 58
    if-eqz v4, :cond_7e

    .line 59
    const/4 v5, 0x1

    .line 60
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->isEmail()Z

    move-result v6

    if-eqz v6, :cond_82

    .line 62
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getEmailFrom()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    move v1, v5

    move-object v5, v8

    .line 72
    :goto_46
    if-eqz v5, :cond_7e

    .line 73
    if-eqz v1, :cond_53

    .line 74
    sget-object v6, Lcom/locationlabs/v3client/SMSAutoReplier;->a:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    move v1, v7

    .line 79
    :cond_53
    if-eqz v1, :cond_7e

    .line 80
    sget-object v1, Lcom/locationlabs/v3client/SMSAutoReplier;->c:Ldg;

    const-string v6, "smsAutoReplyText"

    invoke-static {v1, v6}, Lah;->a(Ldg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lah;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8b

    sget-object v6, Lcom/locationlabs/v3client/SMSAutoReplier;->d:Ljava/lang/Integer;

    invoke-static {p1, v1, v6}, Lah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Lef;

    move-result-object v1

    check-cast v1, Ler;

    iget-object v1, v1, Ler;->a:Ljava/lang/String;

    const-string v6, "Sending SMS auto reply"

    invoke-static {v6}, Li;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {p1, v6, v4, v1}, Lcom/locationlabs/util/android/SMSSender;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_79
    sget-object v1, Lcom/locationlabs/v3client/SMSAutoReplier;->a:Ljava/util/Set;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_7e
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_27

    .line 67
    :cond_82
    invoke-static {v4}, Lcom/locationlabs/v3client/SMSAutoReplier;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a7

    move-object v5, v4

    move v1, v7

    .line 68
    goto :goto_46

    .line 80
    :cond_8b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find resource, not sending sms auto reply: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_4 .. :try_end_a1} :catchall_a2

    goto :goto_79

    .line 105
    :catchall_a2
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_a5
    :try_start_a5
    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a2

    return-void

    :cond_a7
    move v1, v5

    move-object v5, v4

    goto :goto_46
.end method
