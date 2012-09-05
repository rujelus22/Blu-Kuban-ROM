.class Lcom/samsung/swift/service/systemstate/SystemStatePlugin$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemStatePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/service/systemstate/SystemStatePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/service/systemstate/SystemStatePlugin;


# direct methods
.method constructor <init>(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$1;->this$0:Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 185
    const-string v4, "level"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 186
    .local v1, level:I
    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 188
    .local v2, scale:I
    iget-object v4, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$1;->this$0:Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    mul-int/lit8 v5, v1, 0x64

    div-int/2addr v5, v2

    #calls: Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->setBatteryLevel(I)V
    invoke-static {v4, v5}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$000(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;I)V

    .line 190
    const-string v4, "status"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 191
    .local v3, status:I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_30

    const/4 v4, 0x5

    if-ne v3, v4, :cond_36

    .line 192
    :cond_30
    iget-object v4, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$1;->this$0:Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    #calls: Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->setCharging(Z)V
    invoke-static {v4, v7}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$100(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;Z)V

    .line 198
    .end local v1           #level:I
    .end local v2           #scale:I
    .end local v3           #status:I
    :cond_35
    :goto_35
    return-void

    .line 195
    .restart local v1       #level:I
    .restart local v2       #scale:I
    .restart local v3       #status:I
    :cond_36
    iget-object v4, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$1;->this$0:Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    #calls: Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->setCharging(Z)V
    invoke-static {v4, v6}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$100(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;Z)V

    goto :goto_35
.end method
