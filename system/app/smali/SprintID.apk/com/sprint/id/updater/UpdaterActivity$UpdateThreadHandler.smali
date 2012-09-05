.class public Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;
.super Ljava/lang/Object;
.source "UpdaterActivity.java"

# interfaces
.implements Lcom/sprint/id/updater/CheckForUpdateThread$UpdateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/id/updater/UpdaterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/id/updater/UpdaterActivity;


# direct methods
.method public constructor <init>(Lcom/sprint/id/updater/UpdaterActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;->this$0:Lcom/sprint/id/updater/UpdaterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;)Lcom/sprint/id/updater/UpdaterActivity;
    .registers 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;->this$0:Lcom/sprint/id/updater/UpdaterActivity;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter "packageName"
    .parameter "versionName"
    .parameter "force"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;->this$0:Lcom/sprint/id/updater/UpdaterActivity;

    #getter for: Lcom/sprint/id/updater/UpdaterActivity;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v0}, Lcom/sprint/id/updater/UpdaterActivity;->access$0(Lcom/sprint/id/updater/UpdaterActivity;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    const-string v1, "UpdateThreadHandler.execute() "

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;->this$0:Lcom/sprint/id/updater/UpdaterActivity;

    new-instance v1, Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler$1;

    invoke-direct {v1, p0, p3}, Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler$1;-><init>(Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;Z)V

    invoke-virtual {v0, v1}, Lcom/sprint/id/updater/UpdaterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public onFinished()V
    .registers 1

    .prologue
    .line 94
    return-void
.end method
