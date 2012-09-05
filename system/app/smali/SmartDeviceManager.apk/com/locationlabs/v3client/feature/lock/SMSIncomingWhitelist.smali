.class public Lcom/locationlabs/v3client/feature/lock/SMSIncomingWhitelist;
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


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static a([Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/locationlabs/v3client/feature/lock/SMSIncomingWhitelist;->a:Ljava/util/Set;

    .line 29
    const/4 v0, 0x0

    :goto_8
    array-length v1, p0

    if-ge v0, v1, :cond_19

    .line 30
    sget-object v1, Lcom/locationlabs/v3client/feature/lock/SMSIncomingWhitelist;->a:Ljava/util/Set;

    aget-object v2, p0, v0

    invoke-static {v2}, Ls;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 32
    :cond_19
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 37
    if-eqz p2, :cond_a7

    .line 38
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_a7

    .line 41
    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 42
    if-eqz p0, :cond_a7

    .line 43
    const/4 v0, 0x0

    move v1, v0

    :goto_20
    array-length v0, p0

    if-ge v1, v0, :cond_a7

    .line 44
    aget-object v0, p0, v1

    check-cast v0, [B

    invoke-static {v0}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 46
    if-eqz v2, :cond_a2

    .line 47
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isEmail()Z

    move-result v3

    if-nez v3, :cond_a2

    .line 51
    invoke-static {v2}, Ls;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    sget-object v3, Lcom/locationlabs/v3client/feature/lock/SMSIncomingWhitelist;->a:Ljava/util/Set;

    if-eqz v3, :cond_a2

    .line 54
    sget-object v3, Lcom/locationlabs/v3client/feature/lock/SMSIncomingWhitelist;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 55
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {}, Lt;->a()J

    move-result-wide v3

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received SMS from whitelisted number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Li;->c(Ljava/lang/String;)V

    .line 59
    new-instance v5, Lay;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v5, v2, v0, v3}, Lay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    const-string v0, "com.locationlabs.sparkle.action.INCOMING_SMS_WHITELIST"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.locationlabs.v3client.extra.SMS_FROM"

    iget-object v3, v5, Lay;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.locationlabs.v3client.extra.SMS_BODY"

    iget-object v3, v5, Lay;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.locationlabs.v3client.extra.SMS_TIME_MS"

    iget-object v3, v5, Lay;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-static {p1, v2}, La;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 43
    :cond_a2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_20

    .line 86
    :cond_a7
    return-void
.end method
