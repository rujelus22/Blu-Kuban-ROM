.class Lcom/sprint/dsa/UpdateService$1;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/UpdateService;->handleCommand(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/UpdateService;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/UpdateService;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/UpdateService$1;->this$0:Lcom/sprint/dsa/UpdateService;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 130
    iget-object v1, p0, Lcom/sprint/dsa/UpdateService$1;->this$0:Lcom/sprint/dsa/UpdateService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/UpdateService;->performUpdate(Z)Z

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprint.dsa.ACTION_UPDATE_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sprint/dsa/UpdateService$1;->this$0:Lcom/sprint/dsa/UpdateService;

    invoke-virtual {v1, v0}, Lcom/sprint/dsa/UpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    return-void
.end method
