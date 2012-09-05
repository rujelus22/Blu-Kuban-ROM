.class Lcom/sprint/id/updater/UpdaterActivity$1;
.super Ljava/lang/Object;
.source "UpdaterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/id/updater/UpdaterActivity;->showUpdateDialog(Landroid/content/Context;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/id/updater/UpdaterActivity;


# direct methods
.method constructor <init>(Lcom/sprint/id/updater/UpdaterActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/id/updater/UpdaterActivity$1;->this$0:Lcom/sprint/id/updater/UpdaterActivity;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 53
    iget-object v2, p0, Lcom/sprint/id/updater/UpdaterActivity$1;->this$0:Lcom/sprint/id/updater/UpdaterActivity;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcom/sprint/id/updater/UpdaterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 54
    .local v1, mNotificationManager:Landroid/app/NotificationManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sprint/id/updater/UpdaterActivity$1;->this$0:Lcom/sprint/id/updater/UpdaterActivity;

    const-class v3, Lcom/sprint/id/updater/ConfigurationActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, i:Landroid/content/Intent;
    const-string v2, "com.sprint.ce.updater.EXTRA_NO_PROMPT"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    iget-object v2, p0, Lcom/sprint/id/updater/UpdaterActivity$1;->this$0:Lcom/sprint/id/updater/UpdaterActivity;

    invoke-virtual {v2, v0}, Lcom/sprint/id/updater/UpdaterActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 61
    return-void
.end method
