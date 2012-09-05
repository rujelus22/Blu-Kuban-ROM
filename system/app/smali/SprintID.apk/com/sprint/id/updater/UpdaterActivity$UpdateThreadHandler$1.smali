.class Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler$1;
.super Ljava/lang/Object;
.source "UpdaterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;->execute(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;

.field private final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler$1;->this$1:Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;

    iput-boolean p2, p0, Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler$1;->val$force:Z

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler$1;->val$force:Z

    if-eqz v0, :cond_f

    .line 85
    iget-object v0, p0, Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler$1;->this$1:Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;

    #getter for: Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;->this$0:Lcom/sprint/id/updater/UpdaterActivity;
    invoke-static {v0}, Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;->access$0(Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;)Lcom/sprint/id/updater/UpdaterActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprint/id/updater/UpdaterActivity;->showDialog(I)V

    .line 89
    :goto_e
    return-void

    .line 87
    :cond_f
    iget-object v0, p0, Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler$1;->this$1:Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;

    #getter for: Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;->this$0:Lcom/sprint/id/updater/UpdaterActivity;
    invoke-static {v0}, Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;->access$0(Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;)Lcom/sprint/id/updater/UpdaterActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sprint/id/updater/UpdaterActivity;->showDialog(I)V

    goto :goto_e
.end method
