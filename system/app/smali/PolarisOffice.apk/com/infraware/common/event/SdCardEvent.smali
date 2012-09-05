.class public Lcom/infraware/common/event/SdCardEvent;
.super Landroid/content/BroadcastReceiver;
.source "SdCardEvent.java"


# instance fields
.field private listener:Lcom/infraware/common/event/SdCardListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/infraware/common/event/SdCardEvent;->listener:Lcom/infraware/common/event/SdCardListener;

    if-eqz v0, :cond_d

    .line 21
    iget-object v0, p0, Lcom/infraware/common/event/SdCardEvent;->listener:Lcom/infraware/common/event/SdCardListener;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/infraware/common/event/SdCardListener;->isSdCardAction(Ljava/lang/String;)V

    .line 23
    :cond_d
    return-void
.end method

.method public setSdListener(Lcom/infraware/common/event/SdCardListener;)V
    .registers 2
    .parameter "docMaster"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/infraware/common/event/SdCardEvent;->listener:Lcom/infraware/common/event/SdCardListener;

    .line 15
    return-void
.end method
