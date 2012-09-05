.class Lcom/sprint/dsa/PageActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "PageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/PageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageActivity;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/PageActivity$4;->this$0:Lcom/sprint/dsa/PageActivity;

    .line 964
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 968
    :try_start_0
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity$4;->this$0:Lcom/sprint/dsa/PageActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/PageActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 969
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity$4;->this$0:Lcom/sprint/dsa/PageActivity;

    const/4 v2, 0x1

    #setter for: Lcom/sprint/dsa/PageActivity;->mBusy:Z
    invoke-static {v1, v2}, Lcom/sprint/dsa/PageActivity;->access$5(Lcom/sprint/dsa/PageActivity;Z)V

    .line 970
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity$4;->this$0:Lcom/sprint/dsa/PageActivity;

    #getter for: Lcom/sprint/dsa/PageActivity;->mUpdateFinishedReciever:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/sprint/dsa/PageActivity;->access$6(Lcom/sprint/dsa/PageActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    .line 971
    const-string v3, "com.sprint.dsa.ACTION_UPDATE_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 973
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity$4;->this$0:Lcom/sprint/dsa/PageActivity;

    const v2, 0x7f080017

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 977
    :goto_29
    return-void

    .line 974
    :catch_2a
    move-exception v0

    .line 975
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "SprintZone_PageActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method
