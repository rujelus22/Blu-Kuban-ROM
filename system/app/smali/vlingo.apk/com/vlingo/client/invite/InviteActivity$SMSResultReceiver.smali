.class public Lcom/vlingo/client/invite/InviteActivity$SMSResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InviteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/invite/InviteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMSResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/invite/InviteActivity;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/invite/InviteActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/vlingo/client/invite/InviteActivity$SMSResultReceiver;->this$0:Lcom/vlingo/client/invite/InviteActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 277
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_SMS_SENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, wasErr:Z
    invoke-virtual {p0}, Lcom/vlingo/client/invite/InviteActivity$SMSResultReceiver;->getResultCode()I

    move-result v0

    .line 280
    .local v0, errCode:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_15

    .line 281
    const/4 v1, 0x1

    .line 283
    :cond_15
    iget-object v3, p0, Lcom/vlingo/client/invite/InviteActivity$SMSResultReceiver;->this$0:Lcom/vlingo/client/invite/InviteActivity;

    if-nez v1, :cond_1e

    const/4 v2, 0x1

    :goto_1a
    #calls: Lcom/vlingo/client/invite/InviteActivity;->notifySMSSent(Lcom/vlingo/client/invite/InviteActivity$SMSResultReceiver;Landroid/content/Intent;ZI)V
    invoke-static {v3, p0, p2, v2, v0}, Lcom/vlingo/client/invite/InviteActivity;->access$100(Lcom/vlingo/client/invite/InviteActivity;Lcom/vlingo/client/invite/InviteActivity$SMSResultReceiver;Landroid/content/Intent;ZI)V

    .line 285
    .end local v0           #errCode:I
    .end local v1           #wasErr:Z
    :cond_1d
    return-void

    .line 283
    .restart local v0       #errCode:I
    .restart local v1       #wasErr:Z
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1a
.end method
