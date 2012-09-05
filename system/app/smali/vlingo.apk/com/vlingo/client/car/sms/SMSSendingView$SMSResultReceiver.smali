.class public Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSSendingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/sms/SMSSendingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMSResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/sms/SMSSendingView;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/sms/SMSSendingView;)V
    .registers 2
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;->this$0:Lcom/vlingo/client/car/sms/SMSSendingView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 256
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.vlingo.client.samsung.actions.ACTION_SMS_SENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 259
    const/4 v6, 0x0

    .line 260
    .local v6, wasErr:Z
    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;->getResultCode()I

    move-result v5

    .line 261
    .local v5, errCode:I
    const/4 v0, -0x1

    if-eq v5, v0, :cond_15

    .line 262
    const/4 v6, 0x1

    .line 264
    :cond_15
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;->this$0:Lcom/vlingo/client/car/sms/SMSSendingView;

    const/4 v3, 0x0

    if-nez v6, :cond_21

    const/4 v4, 0x1

    :goto_1b
    move-object v1, p0

    move-object v2, p2

    #calls: Lcom/vlingo/client/car/sms/SMSSendingView;->notifySMSSent(Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;Landroid/content/Intent;Landroid/net/Uri;ZI)V
    invoke-static/range {v0 .. v5}, Lcom/vlingo/client/car/sms/SMSSendingView;->access$500(Lcom/vlingo/client/car/sms/SMSSendingView;Lcom/vlingo/client/car/sms/SMSSendingView$SMSResultReceiver;Landroid/content/Intent;Landroid/net/Uri;ZI)V

    .line 266
    .end local v5           #errCode:I
    .end local v6           #wasErr:Z
    :cond_20
    return-void

    .line 264
    .restart local v5       #errCode:I
    .restart local v6       #wasErr:Z
    :cond_21
    const/4 v4, 0x0

    goto :goto_1b
.end method
