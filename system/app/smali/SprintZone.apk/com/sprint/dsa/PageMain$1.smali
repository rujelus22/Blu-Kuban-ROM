.class Lcom/sprint/dsa/PageMain$1;
.super Landroid/content/BroadcastReceiver;
.source "PageMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/PageMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageMain;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PageMain;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/PageMain$1;->this$0:Lcom/sprint/dsa/PageMain;

    .line 284
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 288
    iget-object v2, p0, Lcom/sprint/dsa/PageMain$1;->this$0:Lcom/sprint/dsa/PageMain;

    #setter for: Lcom/sprint/dsa/PageMain;->mUpdateRunning:Z
    invoke-static {v2, v3}, Lcom/sprint/dsa/PageMain;->access$0(Lcom/sprint/dsa/PageMain;Z)V

    .line 289
    iget-object v2, p0, Lcom/sprint/dsa/PageMain$1;->this$0:Lcom/sprint/dsa/PageMain;

    #getter for: Lcom/sprint/dsa/PageMain;->mPrefs:Lcom/sprint/dsa/Prefs;
    invoke-static {v2}, Lcom/sprint/dsa/PageMain;->access$1(Lcom/sprint/dsa/PageMain;)Lcom/sprint/dsa/Prefs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sprint/dsa/Prefs;->isFirstLaunch()Z

    move-result v2

    if-nez v2, :cond_27

    .line 291
    :try_start_12
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_2b

    .line 296
    :goto_1a
    iget-object v2, p0, Lcom/sprint/dsa/PageMain$1;->this$0:Lcom/sprint/dsa/PageMain;

    #getter for: Lcom/sprint/dsa/PageMain;->mActivityResumed:Z
    invoke-static {v2}, Lcom/sprint/dsa/PageMain;->access$2(Lcom/sprint/dsa/PageMain;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/sprint/dsa/PageMain$1;->this$0:Lcom/sprint/dsa/PageMain;

    #calls: Lcom/sprint/dsa/PageMain;->dispatchPages()V
    invoke-static {v2}, Lcom/sprint/dsa/PageMain;->access$3(Lcom/sprint/dsa/PageMain;)V

    .line 299
    :cond_27
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 300
    return-void

    .line 292
    :catch_2b
    move-exception v1

    .line 294
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SprintZone_PageMain"

    const-string v3, "Tried to cancel dialog and it\'s not there: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method
