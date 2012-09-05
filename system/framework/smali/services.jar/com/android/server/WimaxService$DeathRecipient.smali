.class abstract Lcom/android/server/WimaxService$DeathRecipient;
.super Ljava/lang/Object;
.source "WimaxService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WimaxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DeathRecipient"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mMode:I

.field mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/WimaxService;


# direct methods
.method constructor <init>(Lcom/android/server/WimaxService;ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 8
    .parameter
    .parameter "mode"
    .parameter "tag"
    .parameter "binder"

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/android/server/WimaxService$DeathRecipient;->this$0:Lcom/android/server/WimaxService;

    .line 1461
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1462
    iput-object p3, p0, Lcom/android/server/WimaxService$DeathRecipient;->mTag:Ljava/lang/String;

    .line 1463
    iput p2, p0, Lcom/android/server/WimaxService$DeathRecipient;->mMode:I

    .line 1464
    iput-object p4, p0, Lcom/android/server/WimaxService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 1466
    :try_start_b
    iget-object v1, p0, Lcom/android/server/WimaxService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    .line 1470
    :goto_11
    return-void

    .line 1467
    :catch_12
    move-exception v0

    .line 1468
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/WimaxService$DeathRecipient;->binderDied()V

    goto :goto_11
.end method


# virtual methods
.method unlinkDeathRecipient()V
    .registers 3

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/server/WimaxService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1474
    return-void
.end method
