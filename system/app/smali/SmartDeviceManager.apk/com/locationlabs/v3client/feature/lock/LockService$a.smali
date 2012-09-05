.class public final Lcom/locationlabs/v3client/feature/lock/LockService$a;
.super Landroid/content/BroadcastReceiver;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/feature/lock/LockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/locationlabs/v3client/feature/lock/LockService;


# direct methods
.method public constructor <init>(Lcom/locationlabs/v3client/feature/lock/LockService;)V
    .registers 2
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/locationlabs/v3client/feature/lock/LockService$a;->a:Lcom/locationlabs/v3client/feature/lock/LockService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got intent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 459
    const-string v2, "com.locationlabs.sparkle.action.OVERRIDE_PRESSED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 463
    invoke-static {p1}, Law;->a(Landroid/content/Context;)Law;

    move-result-object v0

    .line 465
    const-wide/16 v3, 0x0

    move-object v2, v1

    move-object v5, v1

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Law;->a(Ldg;Ljava/lang/Integer;JLjava/util/List;ZZ)V

    .line 470
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockService$a;->a:Lcom/locationlabs/v3client/feature/lock/LockService;

    invoke-virtual {v0}, Lcom/locationlabs/v3client/feature/lock/LockService;->a()V

    .line 471
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockService$a;->a:Lcom/locationlabs/v3client/feature/lock/LockService;

    invoke-static {v0}, Lcom/locationlabs/v3client/feature/lock/LockService;->a(Lcom/locationlabs/v3client/feature/lock/LockService;)V

    .line 480
    :cond_3a
    :goto_3a
    return-void

    .line 473
    :cond_3b
    const-string v1, "com.locationlabs.sparkle.action.COUNTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 474
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockService$a;->a:Lcom/locationlabs/v3client/feature/lock/LockService;

    invoke-static {v0}, Lcom/locationlabs/v3client/feature/lock/LockService;->b(Landroid/content/Context;)V

    goto :goto_3a
.end method
