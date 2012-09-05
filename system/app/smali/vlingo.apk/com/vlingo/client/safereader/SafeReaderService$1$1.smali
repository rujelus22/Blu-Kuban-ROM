.class Lcom/vlingo/client/safereader/SafeReaderService$1$1;
.super Ljava/lang/Object;
.source "SafeReaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderService$1;->start(Z)V
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
    .line 90
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$1;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iput-boolean p2, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$1;->val$speakAnnouncement:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 94
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$1;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderNotificationManager;->setContext(Landroid/content/Context;)V

    .line 95
    invoke-static {v3}, Lcom/vlingo/client/settings/Settings;->setSafeReaderEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$1;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->messageReadbackListener:Lcom/vlingo/client/safereader/MessageReadbackListener;

    iget-boolean v1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$1;->val$speakAnnouncement:Z

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/MessageReadbackListener;->onReadbackEnabled(Z)V

    .line 97
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->getInstance()Lcom/vlingo/client/core/audio/AudioPlayer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/audio/AudioPlayer;->resume(I)V

    .line 98
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$1;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vlingo.client.samsung.safereader.STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderService;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$1;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    invoke-static {v0, v3}, Lcom/vlingo/client/widget/WidgetManager;->updateAllWidgets(Landroid/content/Context;Z)V

    .line 100
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderNotificationManager;->show()V

    .line 101
    invoke-static {v3}, Lcom/vlingo/client/settings/Settings;->setSafeReaderRunning(Z)V

    .line 102
    return-void
.end method
