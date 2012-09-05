.class final Lcom/locationlabs/v3client/feature/lock/LockScreen$a;
.super Landroid/content/BroadcastReceiver;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/feature/lock/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/locationlabs/v3client/feature/lock/LockScreen;


# direct methods
.method synthetic constructor <init>(Lcom/locationlabs/v3client/feature/lock/LockScreen;)V
    .registers 3
    .parameter

    .prologue
    .line 857
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen$a;-><init>(Lcom/locationlabs/v3client/feature/lock/LockScreen;B)V

    return-void
.end method

.method private constructor <init>(Lcom/locationlabs/v3client/feature/lock/LockScreen;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 857
    iput-object p1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$a;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received intent (from service): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 863
    const-string v1, "com.locationlabs.v3client.action.UNLOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 864
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$a;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-static {v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->d(Lcom/locationlabs/v3client/feature/lock/LockScreen;)V

    .line 883
    :cond_2c
    :goto_2c
    return-void

    .line 866
    :cond_2d
    const-string v1, "com.locationlabs.sparkle.action.OVERRIDE_PRESSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 867
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$a;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-static {v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->d(Lcom/locationlabs/v3client/feature/lock/LockScreen;)V

    goto :goto_2c

    .line 869
    :cond_3b
    const-string v1, "com.locationlabs.sparkle.action.911"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 870
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$a;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-static {v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->d(Lcom/locationlabs/v3client/feature/lock/LockScreen;)V

    goto :goto_2c

    .line 872
    :cond_49
    const-string v0, "com.locationlabs.sparkle.action.COUNTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 873
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$a;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-static {v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->e(Lcom/locationlabs/v3client/feature/lock/LockScreen;)V

    goto :goto_2c

    .line 875
    :cond_5b
    const-string v0, "com.locationlabs.sparkle.action.INCOMING_SMS_WHITELIST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 876
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$a;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-static {v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->f(Lcom/locationlabs/v3client/feature/lock/LockScreen;)Z

    move-result v0

    if-ne v0, v2, :cond_7b

    move v0, v2

    :goto_70
    const-string v1, "Received com.locationlabs.sparkle.action.INCOMING_SMS_WHITELIST intent when sms incoming whitelist not enabled"

    invoke-static {v0, v1}, Lj;->a(ZLjava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$a;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-static {v0, p2}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a(Lcom/locationlabs/v3client/feature/lock/LockScreen;Landroid/content/Intent;)V

    goto :goto_2c

    .line 876
    :cond_7b
    const/4 v0, 0x0

    goto :goto_70

    .line 880
    :cond_7d
    const-string v0, "com.locationlabs.v3client.action.RESOURCE_SUCCESS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 881
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$a;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-static {v0, p2}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->b(Lcom/locationlabs/v3client/feature/lock/LockScreen;Landroid/content/Intent;)V

    goto :goto_2c
.end method
