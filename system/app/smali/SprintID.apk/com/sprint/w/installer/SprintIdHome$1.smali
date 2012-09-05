.class Lcom/sprint/w/installer/SprintIdHome$1;
.super Ljava/lang/Object;
.source "SprintIdHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/SprintIdHome;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/SprintIdHome;

.field final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/SprintIdHome;Landroid/os/Bundle;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sprint/w/installer/SprintIdHome$1;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    iput-object p2, p0, Lcom/sprint/w/installer/SprintIdHome$1;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 49
    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$1;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    #calls: Lcom/sprint/w/installer/SprintIdHome;->init()V
    invoke-static {v1}, Lcom/sprint/w/installer/SprintIdHome;->access$000(Lcom/sprint/w/installer/SprintIdHome;)V

    .line 50
    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$1;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    #calls: Lcom/sprint/w/installer/SprintIdHome;->checkFirstLaunch()V
    invoke-static {v1}, Lcom/sprint/w/installer/SprintIdHome;->access$100(Lcom/sprint/w/installer/SprintIdHome;)V

    .line 51
    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$1;->val$savedInstanceState:Landroid/os/Bundle;

    if-nez v1, :cond_18

    .line 52
    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$1;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    #getter for: Lcom/sprint/w/installer/SprintIdHome;->mPackSwitcherLoader:Lcom/sprint/w/installer/PackSwitcherLoader;
    invoke-static {v1}, Lcom/sprint/w/installer/SprintIdHome;->access$200(Lcom/sprint/w/installer/SprintIdHome;)Lcom/sprint/w/installer/PackSwitcherLoader;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sprint/w/installer/PackSwitcherLoader;->refresh(Z)V

    .line 54
    :cond_18
    new-instance v0, Lcom/sprint/w/installer/BroadcastNotifier;

    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$1;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    invoke-direct {v0, v1}, Lcom/sprint/w/installer/BroadcastNotifier;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, bn:Lcom/sprint/w/installer/BroadcastNotifier;
    invoke-virtual {v0}, Lcom/sprint/w/installer/BroadcastNotifier;->notifyUserSkipHandled()V

    .line 58
    sget-boolean v1, Lcom/sprint/w/installer/PackSwitcherLoader;->sBusy:Z

    if-eqz v1, :cond_3b

    .line 59
    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$1;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    iget-object v2, p0, Lcom/sprint/w/installer/SprintIdHome$1;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sprint/w/installer/SprintIdHome$1;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    const v5, 0x7f06006e

    invoke-virtual {v4, v5}, Lcom/sprint/w/installer/SprintIdHome;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v6, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/sprint/w/installer/SprintIdHome;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 61
    :cond_3b
    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$1;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    iget-object v1, v1, Lcom/sprint/w/installer/SprintIdHome;->restorePosition:Ljava/lang/String;

    if-eqz v1, :cond_4f

    .line 62
    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$1;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    #getter for: Lcom/sprint/w/installer/SprintIdHome;->mPackSwitcherLoader:Lcom/sprint/w/installer/PackSwitcherLoader;
    invoke-static {v1}, Lcom/sprint/w/installer/SprintIdHome;->access$200(Lcom/sprint/w/installer/SprintIdHome;)Lcom/sprint/w/installer/PackSwitcherLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/SprintIdHome$1;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    iget-object v2, v2, Lcom/sprint/w/installer/SprintIdHome;->restorePosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/PackSwitcherLoader;->refresh(Ljava/lang/String;)V

    .line 66
    :goto_4e
    return-void

    .line 64
    :cond_4f
    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$1;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    #getter for: Lcom/sprint/w/installer/SprintIdHome;->mPackSwitcherLoader:Lcom/sprint/w/installer/PackSwitcherLoader;
    invoke-static {v1}, Lcom/sprint/w/installer/SprintIdHome;->access$200(Lcom/sprint/w/installer/SprintIdHome;)Lcom/sprint/w/installer/PackSwitcherLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->refresh()V

    goto :goto_4e
.end method
