.class Lcom/samsung/client/SyncmlService$4;
.super Landroid/content/BroadcastReceiver;
.source "SyncmlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/SyncmlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/SyncmlService;


# direct methods
.method constructor <init>(Lcom/samsung/client/SyncmlService;)V
    .registers 2
    .parameter

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/samsung/client/SyncmlService$4;->this$0:Lcom/samsung/client/SyncmlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 1318
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1320
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1321
    const-string v3, "level"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1322
    .local v1, level:I
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1324
    .local v2, scale:I
    mul-int/lit8 v3, v1, 0x64

    div-int/2addr v3, v2

    const/16 v4, 0xd

    if-gt v3, v4, :cond_4b

    .line 1325
    const-string v3, "SyncmlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBatteryReceiver: level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scale =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object v3, p0, Lcom/samsung/client/SyncmlService$4;->this$0:Lcom/samsung/client/SyncmlService;

    const/4 v4, 0x1

    #setter for: Lcom/samsung/client/SyncmlService;->mIsBatteryLow:Z
    invoke-static {v3, v4}, Lcom/samsung/client/SyncmlService;->access$802(Lcom/samsung/client/SyncmlService;Z)Z

    .line 1333
    .end local v1           #level:I
    .end local v2           #scale:I
    :cond_4a
    :goto_4a
    return-void

    .line 1329
    .restart local v1       #level:I
    .restart local v2       #scale:I
    :cond_4b
    iget-object v3, p0, Lcom/samsung/client/SyncmlService$4;->this$0:Lcom/samsung/client/SyncmlService;

    #setter for: Lcom/samsung/client/SyncmlService;->mIsBatteryLow:Z
    invoke-static {v3, v5}, Lcom/samsung/client/SyncmlService;->access$802(Lcom/samsung/client/SyncmlService;Z)Z

    goto :goto_4a
.end method
