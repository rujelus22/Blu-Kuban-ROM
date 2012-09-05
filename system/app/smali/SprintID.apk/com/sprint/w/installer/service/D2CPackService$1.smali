.class Lcom/sprint/w/installer/service/D2CPackService$1;
.super Ljava/lang/Thread;
.source "D2CPackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/service/D2CPackService;->installD2CPack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field retry:Z

.field final synthetic this$0:Lcom/sprint/w/installer/service/D2CPackService;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/service/D2CPackService;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sprint/w/installer/service/D2CPackService$1;->this$0:Lcom/sprint/w/installer/service/D2CPackService;

    iput p2, p0, Lcom/sprint/w/installer/service/D2CPackService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private doWork()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, mServicePack:Lcom/sprint/w/installer/psi/ServicePack;
    iget-object v5, p0, Lcom/sprint/w/installer/service/D2CPackService$1;->this$0:Lcom/sprint/w/installer/service/D2CPackService;

    invoke-virtual {v5}, Lcom/sprint/w/installer/service/D2CPackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-wide/32 v6, 0xea60

    invoke-static {v5, v6, v7}, Lcom/sprint/w/installer/util/Util;->waitForNetwork(Landroid/content/Context;J)Z

    .line 41
    invoke-static {}, Lcom/sprint/w/installer/service/D2CPackService;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v5

    const-string v6, "checking if d2c..."

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/sprint/w/installer/psi/PsiContentManager;->discoverVaultPacks()Ljava/util/ArrayList;

    move-result-object v2

    .line 44
    .local v2, packs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    if-eqz v2, :cond_7a

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v3, :cond_7a

    .line 46
    invoke-static {}, Lcom/sprint/w/installer/service/D2CPackService;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v5

    const-string v6, "d2c detected"

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mServicePack:Lcom/sprint/w/installer/psi/ServicePack;
    check-cast v1, Lcom/sprint/w/installer/psi/ServicePack;

    .line 60
    .restart local v1       #mServicePack:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_33
    :goto_33
    if-eqz v1, :cond_56

    .line 61
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/sprint/w/installer/service/D2CPackService$1;->this$0:Lcom/sprint/w/installer/service/D2CPackService;

    invoke-virtual {v5}, Lcom/sprint/w/installer/service/D2CPackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v0, i:Landroid/content/Intent;
    const-string v5, "com.sprint.ACTION_INSTALL_FROM_D2C"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    const-string v5, "sp"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 65
    iget-object v5, p0, Lcom/sprint/w/installer/service/D2CPackService$1;->this$0:Lcom/sprint/w/installer/service/D2CPackService;

    invoke-virtual {v5, v0}, Lcom/sprint/w/installer/service/D2CPackService;->startActivity(Landroid/content/Intent;)V

    .line 67
    .end local v0           #i:Landroid/content/Intent;
    :cond_56
    invoke-static {}, Lcom/sprint/w/installer/service/D2CPackService;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v5

    const-string v6, "Sending broadcast BootListener.DEFAULT_PACK_STARTED"

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.sprint.id.notify.DEFAULT_PACK_STARTED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .restart local v0       #i:Landroid/content/Intent;
    const-string v5, "EXTRA_HAS_PACK"

    if-eqz v1, :cond_99

    :goto_6a
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    iget-object v3, p0, Lcom/sprint/w/installer/service/D2CPackService$1;->this$0:Lcom/sprint/w/installer/service/D2CPackService;

    invoke-virtual {v3, v0}, Lcom/sprint/w/installer/service/D2CPackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    iget-object v3, p0, Lcom/sprint/w/installer/service/D2CPackService$1;->this$0:Lcom/sprint/w/installer/service/D2CPackService;

    iget v4, p0, Lcom/sprint/w/installer/service/D2CPackService$1;->val$startId:I

    invoke-virtual {v3, v4}, Lcom/sprint/w/installer/service/D2CPackService;->stopSelf(I)V

    .line 73
    .end local v0           #i:Landroid/content/Intent;
    :goto_79
    return-void

    .line 48
    :cond_7a
    if-eqz v2, :cond_86

    .line 49
    invoke-static {}, Lcom/sprint/w/installer/service/D2CPackService;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v5

    const-string v6, "not a d2c"

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    goto :goto_33

    .line 52
    :cond_86
    invoke-static {}, Lcom/sprint/w/installer/service/D2CPackService;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v5

    const-string v6, "Error checking d2c status"

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 53
    iget-boolean v5, p0, Lcom/sprint/w/installer/service/D2CPackService$1;->retry:Z

    if-nez v5, :cond_33

    .line 54
    iput-boolean v3, p0, Lcom/sprint/w/installer/service/D2CPackService$1;->retry:Z

    .line 55
    invoke-direct {p0}, Lcom/sprint/w/installer/service/D2CPackService$1;->doWork()V

    goto :goto_79

    .restart local v0       #i:Landroid/content/Intent;
    :cond_99
    move v3, v4

    .line 69
    goto :goto_6a
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sprint/w/installer/service/D2CPackService$1;->doWork()V

    .line 36
    return-void
.end method
