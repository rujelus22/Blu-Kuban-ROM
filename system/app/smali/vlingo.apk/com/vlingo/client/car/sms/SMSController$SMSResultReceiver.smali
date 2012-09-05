.class public Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/sms/SMSController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMSResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/sms/SMSController;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/sms/SMSController;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;->this$0:Lcom/vlingo/client/car/sms/SMSController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.btb.intent.action.SMS_SENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.vlingo.client.samsung.actions.ACTION_SMS_SENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 85
    :cond_25
    const/4 v6, 0x0

    .line 88
    .local v6, wasErr:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.btb.intent.action.SMS_SENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 89
    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;->getResultCode()I

    move-result v5

    .line 93
    .local v5, errCode:I
    :goto_36
    if-eq v5, v2, :cond_39

    .line 94
    const/4 v6, 0x1

    .line 96
    :cond_39
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;->this$0:Lcom/vlingo/client/car/sms/SMSController;

    const/4 v3, 0x0

    if-nez v6, :cond_4c

    const/4 v4, 0x1

    :goto_3f
    move-object v1, p0

    move-object v2, p2

    #calls: Lcom/vlingo/client/car/sms/SMSController;->notifySMSSent(Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;Landroid/content/Intent;Landroid/net/Uri;ZI)V
    invoke-static/range {v0 .. v5}, Lcom/vlingo/client/car/sms/SMSController;->access$000(Lcom/vlingo/client/car/sms/SMSController;Lcom/vlingo/client/car/sms/SMSController$SMSResultReceiver;Landroid/content/Intent;Landroid/net/Uri;ZI)V

    .line 98
    .end local v5           #errCode:I
    .end local v6           #wasErr:Z
    :cond_44
    return-void

    .line 91
    .restart local v6       #wasErr:Z
    :cond_45
    const-string v0, "result"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .restart local v5       #errCode:I
    goto :goto_36

    .line 96
    :cond_4c
    const/4 v4, 0x0

    goto :goto_3f
.end method
