.class public final Lbb;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 252
    iput-object p1, p0, Lbb;->a:Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lbb;->a:Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;

    check-cast p2, Lcom/locationlabs/v3client/feature/polling/PollingService$a;

    iget-object v1, p2, Lcom/locationlabs/v3client/feature/polling/PollingService$a;->a:Lcom/locationlabs/v3client/feature/polling/PollingService;

    invoke-static {v0, v1}, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a(Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;Lcom/locationlabs/v3client/feature/polling/PollingService;)Lcom/locationlabs/v3client/feature/polling/PollingService;

    .line 256
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lbb;->a:Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a(Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;Lcom/locationlabs/v3client/feature/polling/PollingService;)Lcom/locationlabs/v3client/feature/polling/PollingService;

    .line 260
    return-void
.end method
