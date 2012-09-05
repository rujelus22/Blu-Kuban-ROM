.class public Lcom/infraware/common/event/FindByPositionEvent;
.super Landroid/content/BroadcastReceiver;
.source "FindByPositionEvent.java"


# static fields
.field public static final LG_SELECT_FILE:Ljava/lang/String; = "filepath"


# instance fields
.field private listener:Lcom/infraware/common/event/FindByPositionListener;


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
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/infraware/common/event/FindByPositionEvent;->listener:Lcom/infraware/common/event/FindByPositionListener;

    if-eqz v0, :cond_9

    .line 20
    iget-object v0, p0, Lcom/infraware/common/event/FindByPositionEvent;->listener:Lcom/infraware/common/event/FindByPositionListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/common/event/FindByPositionListener;->isFindByPositionAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 22
    :cond_9
    return-void
.end method

.method public setFindByPositionListener(Lcom/infraware/common/event/FindByPositionListener;)V
    .registers 2
    .parameter "findByPosition"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/infraware/common/event/FindByPositionEvent;->listener:Lcom/infraware/common/event/FindByPositionListener;

    .line 16
    return-void
.end method
