.class Lcom/samsung/map/SmsObserver$SimFullReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/map/SmsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimFullReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/map/SmsObserver;


# direct methods
.method private constructor <init>(Lcom/samsung/map/SmsObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/map/SmsObserver$SimFullReceiver;->this$0:Lcom/samsung/map/SmsObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/map/SmsObserver;Lcom/samsung/map/SmsObserver$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/samsung/map/SmsObserver$SimFullReceiver;-><init>(Lcom/samsung/map/SmsObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_2e

    const-string v0, "android.provider.Telephony.SIM_FULL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 94
    iget-object v0, p0, Lcom/samsung/map/SmsObserver$SimFullReceiver;->this$0:Lcom/samsung/map/SmsObserver;

    #getter for: Lcom/samsung/map/SmsObserver;->service:Lcom/samsung/map/MessageNotificationService;
    invoke-static {v0}, Lcom/samsung/map/SmsObserver;->access$000(Lcom/samsung/map/SmsObserver;)Lcom/samsung/map/MessageNotificationService;

    move-result-object v6

    const/4 v7, 0x3

    new-instance v0, Lcom/samsung/map/MapEventReport;

    const/4 v1, 0x6

    const-string v3, ""

    const-string v4, ""

    invoke-direct/range {v0 .. v5}, Lcom/samsung/map/MapEventReport;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7, v2, v0}, Lcom/samsung/map/MessageNotificationService;->SendMessage(IILcom/samsung/map/MapEventReport;)V

    .line 97
    :cond_2e
    const-string v0, "android.intent.action.CONTENT_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 98
    iget-object v0, p0, Lcom/samsung/map/SmsObserver$SimFullReceiver;->this$0:Lcom/samsung/map/SmsObserver;

    invoke-virtual {v0, v5}, Lcom/samsung/map/SmsObserver;->onChange(Z)V

    .line 100
    :cond_3f
    return-void
.end method
