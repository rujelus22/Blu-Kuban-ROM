.class Lcom/vlingo/client/safereader/SafeReaderService$1$2;
.super Ljava/lang/Object;
.source "SafeReaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderService$1;->stop(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

.field final synthetic val$speakAnnouncement:Z


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderService$1;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$2;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iput-boolean p2, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$2;->val$speakAnnouncement:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-static {v3}, Lcom/vlingo/client/settings/Settings;->setSafeReaderEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$2;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->messageReadbackListener:Lcom/vlingo/client/safereader/MessageReadbackListener;

    iget-boolean v1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$2;->val$speakAnnouncement:Z

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/MessageReadbackListener;->onReadbackDisabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$2;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vlingo.client.samsung.safereader.STOPPED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderService;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$2;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    invoke-static {v0, v3}, Lcom/vlingo/client/widget/WidgetManager;->updateAllWidgets(Landroid/content/Context;Z)V

    .line 117
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderNotificationManager;->hide()V

    .line 118
    invoke-static {v3}, Lcom/vlingo/client/settings/Settings;->setSafeReaderRunning(Z)V

    .line 119
    return-void
.end method
