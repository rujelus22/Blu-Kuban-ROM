.class Lcom/sprint/w/installer/PackInstaller$1;
.super Landroid/content/BroadcastReceiver;
.source "PackInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackInstaller;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller;)V
    .registers 2
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$1;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 207
    const-string v0, "com.sprint.w.installer.PackInstaller.ACTION_FINISH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "com.sprint.ACTION_INSTALL_DEFAULT_PACK"

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$1;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-virtual {v1}, Lcom/sprint/w/installer/PackInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "com.sprint.ACTION_INSTALL_FROM_D2C"

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$1;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-virtual {v1}, Lcom/sprint/w/installer/PackInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 208
    :cond_30
    invoke-static {}, Lcom/sprint/w/installer/PackInstaller;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v0

    const-string v1, "Received com.sprint.w.installer.PackInstaller.ACTION_FINISH"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$1;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackInstaller;->finish()V

    .line 211
    :cond_3e
    return-void
.end method
