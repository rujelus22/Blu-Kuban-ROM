.class Lcom/samsung/map/MessageNotificationService$4;
.super Landroid/content/BroadcastReceiver;
.source "MessageNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/map/MessageNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/map/MessageNotificationService;


# direct methods
.method constructor <init>(Lcom/samsung/map/MessageNotificationService;)V
    .registers 2
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/samsung/map/MessageNotificationService$4;->this$0:Lcom/samsung/map/MessageNotificationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 460
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.samsung.map.intent.action.MNS_CHECKMSG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 463
    iget-object v1, p0, Lcom/samsung/map/MessageNotificationService$4;->this$0:Lcom/samsung/map/MessageNotificationService;

    #getter for: Lcom/samsung/map/MessageNotificationService;->smsObserver:Lcom/samsung/map/SmsObserver;
    invoke-static {v1}, Lcom/samsung/map/MessageNotificationService;->access$1000(Lcom/samsung/map/MessageNotificationService;)Lcom/samsung/map/SmsObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/map/SmsObserver;->checkMessages()V

    .line 467
    :cond_15
    return-void
.end method
