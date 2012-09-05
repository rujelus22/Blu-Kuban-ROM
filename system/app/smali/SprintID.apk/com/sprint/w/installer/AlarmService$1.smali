.class Lcom/sprint/w/installer/AlarmService$1;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/AlarmService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/AlarmService;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/AlarmService;)V
    .registers 2
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/sprint/w/installer/AlarmService$1;->this$0:Lcom/sprint/w/installer/AlarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 23
    iget-object v1, p0, Lcom/sprint/w/installer/AlarmService$1;->this$0:Lcom/sprint/w/installer/AlarmService;

    invoke-virtual {v1}, Lcom/sprint/w/installer/AlarmService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sprint/w/installer/PackInfo;->getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v0

    .line 24
    .local v0, packInfo:Lcom/sprint/w/installer/PackInfo;
    if-eqz v0, :cond_1b

    .line 25
    new-instance v1, Lcom/sprint/w/installer/BroadcastNotifier;

    iget-object v2, p0, Lcom/sprint/w/installer/AlarmService$1;->this$0:Lcom/sprint/w/installer/AlarmService;

    invoke-virtual {v2}, Lcom/sprint/w/installer/AlarmService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sprint/w/installer/BroadcastNotifier;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sprint/w/installer/BroadcastNotifier;->notifyPackAudit(Lcom/sprint/w/installer/PackInfo;Z)V

    .line 27
    :cond_1b
    iget-object v1, p0, Lcom/sprint/w/installer/AlarmService$1;->this$0:Lcom/sprint/w/installer/AlarmService;

    #getter for: Lcom/sprint/w/installer/AlarmService;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v1}, Lcom/sprint/w/installer/AlarmService;->access$000(Lcom/sprint/w/installer/AlarmService;)Lcom/sprint/id/logger/Logger;

    move-result-object v1

    const-string v2, "Alarm service broadcast created"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/sprint/w/installer/AlarmService$1;->this$0:Lcom/sprint/w/installer/AlarmService;

    invoke-virtual {v1}, Lcom/sprint/w/installer/AlarmService;->stopSelf()V

    .line 30
    return-void
.end method
