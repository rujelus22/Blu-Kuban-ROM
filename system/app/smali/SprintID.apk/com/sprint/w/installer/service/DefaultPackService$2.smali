.class Lcom/sprint/w/installer/service/DefaultPackService$2;
.super Ljava/lang/Thread;
.source "DefaultPackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/service/DefaultPackService;->installDefaultPack(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/service/DefaultPackService;

.field final synthetic val$reinstall:Z

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/service/DefaultPackService;IZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->this$0:Lcom/sprint/w/installer/service/DefaultPackService;

    iput p2, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->val$startId:I

    iput-boolean p3, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->val$reinstall:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/high16 v8, 0x1000

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, mServicePack:Lcom/sprint/w/installer/psi/ServicePack;
    invoke-static {}, Lcom/sprint/w/installer/service/DefaultPackService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v5

    const-string v6, "Looking for Default Pack..."

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/sprint/w/installer/psi/PsiContentManager;->discoverDefaultPack()Ljava/util/ArrayList;

    move-result-object v2

    .line 68
    .local v2, packs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    if-eqz v2, :cond_85

    .line 69
    invoke-static {}, Lcom/sprint/w/installer/service/DefaultPackService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default pack detected, pack count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_42

    .line 72
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mServicePack:Lcom/sprint/w/installer/psi/ServicePack;
    check-cast v1, Lcom/sprint/w/installer/psi/ServicePack;

    .line 89
    .restart local v1       #mServicePack:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_42
    if-nez v1, :cond_b6

    .line 92
    iget-boolean v5, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->val$reinstall:Z

    if-eqz v5, :cond_5d

    .line 94
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->this$0:Lcom/sprint/w/installer/service/DefaultPackService;

    invoke-virtual {v5}, Lcom/sprint/w/installer/service/DefaultPackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/sprint/w/installer/psi/PsiPackBrowser;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    iget-object v5, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->this$0:Lcom/sprint/w/installer/service/DefaultPackService;

    invoke-virtual {v5, v0}, Lcom/sprint/w/installer/service/DefaultPackService;->startActivity(Landroid/content/Intent;)V

    .line 109
    .end local v0           #i:Landroid/content/Intent;
    :cond_5d
    :goto_5d
    iget-boolean v5, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->val$reinstall:Z

    if-nez v5, :cond_7d

    .line 110
    invoke-static {}, Lcom/sprint/w/installer/service/DefaultPackService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v5

    const-string v6, "Sending broadcast BootListener.DEFAULT_PACK_STARTED"

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.sprint.id.notify.DEFAULT_PACK_STARTED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .restart local v0       #i:Landroid/content/Intent;
    const-string v5, "EXTRA_HAS_PACK"

    if-eqz v1, :cond_102

    :goto_75
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    iget-object v3, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->this$0:Lcom/sprint/w/installer/service/DefaultPackService;

    invoke-virtual {v3, v0}, Lcom/sprint/w/installer/service/DefaultPackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    .end local v0           #i:Landroid/content/Intent;
    :cond_7d
    iget-object v3, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->this$0:Lcom/sprint/w/installer/service/DefaultPackService;

    iget v4, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->val$startId:I

    invoke-virtual {v3, v4}, Lcom/sprint/w/installer/service/DefaultPackService;->stopSelf(I)V

    .line 117
    :goto_84
    return-void

    .line 76
    :cond_85
    invoke-static {}, Lcom/sprint/w/installer/service/DefaultPackService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v4

    const-string v5, "Error getting default pack"

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 77
    iget-object v4, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->this$0:Lcom/sprint/w/installer/service/DefaultPackService;

    iget-boolean v4, v4, Lcom/sprint/w/installer/service/DefaultPackService;->mD2CCheckRetry:Z

    if-nez v4, :cond_a2

    .line 78
    iget-object v4, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->this$0:Lcom/sprint/w/installer/service/DefaultPackService;

    iput-boolean v3, v4, Lcom/sprint/w/installer/service/DefaultPackService;->mD2CCheckRetry:Z

    .line 79
    iget-object v3, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->this$0:Lcom/sprint/w/installer/service/DefaultPackService;

    iget v4, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->val$startId:I

    iget-boolean v5, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->val$reinstall:Z

    #calls: Lcom/sprint/w/installer/service/DefaultPackService;->installDefaultPack(IZ)V
    invoke-static {v3, v4, v5}, Lcom/sprint/w/installer/service/DefaultPackService;->access$000(Lcom/sprint/w/installer/service/DefaultPackService;IZ)V

    goto :goto_84

    .line 82
    :cond_a2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sprint.w.installer.service.DefaultPackService.ACTION_ERROR"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->this$0:Lcom/sprint/w/installer/service/DefaultPackService;

    invoke-virtual {v3, v0}, Lcom/sprint/w/installer/service/DefaultPackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    iget-object v3, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->this$0:Lcom/sprint/w/installer/service/DefaultPackService;

    iget v4, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->val$startId:I

    invoke-virtual {v3, v4}, Lcom/sprint/w/installer/service/DefaultPackService;->stopSelf(I)V

    goto :goto_84

    .line 99
    .end local v0           #i:Landroid/content/Intent;
    :cond_b6
    invoke-static {}, Lcom/sprint/w/installer/service/DefaultPackService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Installing default pack: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mServicePack:Lcom/sprint/w/installer/psi/ServicePack;
    check-cast v1, Lcom/sprint/w/installer/psi/ServicePack;

    .line 101
    .restart local v1       #mServicePack:Lcom/sprint/w/installer/psi/ServicePack;
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->this$0:Lcom/sprint/w/installer/service/DefaultPackService;

    invoke-virtual {v5}, Lcom/sprint/w/installer/service/DefaultPackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    const-string v5, "com.sprint.ACTION_INSTALL_DEFAULT_PACK"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v5, "sp"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 105
    const-string v5, "reinstall"

    iget-boolean v6, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->val$reinstall:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    iget-object v5, p0, Lcom/sprint/w/installer/service/DefaultPackService$2;->this$0:Lcom/sprint/w/installer/service/DefaultPackService;

    invoke-virtual {v5, v0}, Lcom/sprint/w/installer/service/DefaultPackService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5d

    :cond_102
    move v3, v4

    .line 112
    goto/16 :goto_75
.end method
