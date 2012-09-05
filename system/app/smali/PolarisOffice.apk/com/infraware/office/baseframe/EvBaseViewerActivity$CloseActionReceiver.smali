.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EvBaseViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseActionReceiver"
.end annotation


# instance fields
.field protected mbReceived:Z

.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;


# direct methods
.method private constructor <init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;->mbReceived:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    return-void
.end method


# virtual methods
.method isReceivedDeactiveAction()Z
    .registers 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;->mbReceived:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;->mbReceived:Z

    .line 221
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->finishEx()V

    .line 222
    return-void
.end method
