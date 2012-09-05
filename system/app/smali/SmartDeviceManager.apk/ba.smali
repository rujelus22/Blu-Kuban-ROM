.class public final Lba;
.super Landroid/content/BroadcastReceiver;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;


# direct methods
.method public constructor <init>(Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lba;->a:Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 226
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 233
    :cond_8
    :goto_8
    return-void

    .line 227
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v1, "com.locationlabs.v3client.BROADCAST_DO_POLL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 229
    iget-object v0, p0, Lba;->a:Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;

    invoke-virtual {v0}, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a()V

    goto :goto_8

    .line 231
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown b\'cast action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_8
.end method
