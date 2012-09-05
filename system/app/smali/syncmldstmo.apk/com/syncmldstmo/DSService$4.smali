.class Lcom/syncmldstmo/DSService$4;
.super Landroid/content/BroadcastReceiver;
.source "DSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/DSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/DSService;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/DSService;)V
    .registers 2
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/syncmldstmo/DSService$4;->this$0:Lcom/syncmldstmo/DSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 482
    const/4 v0, 0x1

    const-string v1, "Locale language changed"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlsetSyncAutomatically()V

    .line 484
    return-void
.end method
