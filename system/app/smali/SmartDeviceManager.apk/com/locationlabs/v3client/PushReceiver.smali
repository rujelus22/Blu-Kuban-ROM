.class public Lcom/locationlabs/v3client/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/locationlabs/v3client/PushControlReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    const-string v1, "com.locationlabs.v3client.action.RETRY_C2DM_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 80
    new-instance v1, Lz;

    const-string v2, "getC2DMRegistrationId"

    invoke-direct {v1, v2}, Lz;-><init>(Ljava/lang/String;)V

    const-string v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Lz;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/Exception;)J

    move-result-wide v0

    .line 81
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    .line 84
    const-string v0, "C2DM Registration will not retry b/c max retries exceeded"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 86
    :cond_30
    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 37
    const-string v0, "Handling push message"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_11

    .line 42
    :cond_1b
    new-instance v0, Lcu;

    invoke-direct {v0, p1}, Lcu;-><init>(Landroid/content/Intent;)V

    .line 43
    invoke-static {p0, v0}, Lv;->a(Landroid/content/Context;Ldc;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 25
    invoke-static {p1}, Lcom/locationlabs/v3client/PushControlReceiver;->a(Landroid/content/Context;)V

    .line 26
    const-string v0, "Handling push registration"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    const-string v0, "error"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unregistered"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "registration_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C2DM Registration error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    invoke-static {p1, v3}, Laf;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/locationlabs/v3client/PushReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 33
    :goto_45
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3, v3}, Lcom/locationlabs/v3client/PushReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 34
    return-void

    .line 26
    :cond_4a
    if-eqz v1, :cond_55

    invoke-static {p1, v3}, Laf;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "Unregistered from C2DM, new messages from the authorized sender will be rejected"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    goto :goto_45

    :cond_55
    if-eqz v2, :cond_65

    new-instance v0, Lz;

    const-string v1, "getC2DMRegistrationId"

    invoke-direct {v0, v1}, Lz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lz;->b(Landroid/content/Context;)V

    invoke-static {p1, v2}, Laf;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_45

    :cond_65
    const-string v0, "Push registration contains no error, is not an unregister, but also has no registration"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    invoke-static {p1, v3}, Laf;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/locationlabs/v3client/PushReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_45

    .line 27
    :cond_71
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 28
    invoke-static {p1}, Lcom/locationlabs/v3client/PushControlReceiver;->a(Landroid/content/Context;)V

    .line 29
    invoke-static {p1, p2}, Lcom/locationlabs/v3client/PushReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_45

    .line 31
    :cond_80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected push receiver action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_45
.end method
