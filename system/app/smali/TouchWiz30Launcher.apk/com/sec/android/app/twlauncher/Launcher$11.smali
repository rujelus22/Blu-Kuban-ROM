.class Lcom/sec/android/app/twlauncher/Launcher$11;
.super Landroid/os/Handler;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 6577
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$11;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 6580
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    .line 6605
    :cond_5
    :goto_5
    return-void

    .line 6583
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 6584
    const-string v0, "Launcher"

    const-string v1, "uninstall succeeded "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6589
    :goto_12
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$11;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    goto :goto_5

    .line 6586
    :cond_1c
    const-string v0, "Launcher"

    const-string v1, "uninstall failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 6595
    :pswitch_24
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$11;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isDefaultIMSI()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6596
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$11;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->setSomethingsInDefaultIMSI()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$400(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 6597
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$11;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6598
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$11;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    goto :goto_5

    .line 6580
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_6
        :pswitch_24
    .end packed-switch
.end method
