.class Lcom/android/browser/Controller$2;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->doStart(Landroid/os/Bundle;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;

.field final synthetic val$currentTabId:J

.field final synthetic val$icicle:Landroid/os/Bundle;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$restoreIncognitoTabs:Z


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;Landroid/content/Intent;Landroid/os/Bundle;JZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/browser/Controller$2;->this$0:Lcom/android/browser/Controller;

    iput-object p2, p0, Lcom/android/browser/Controller$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/browser/Controller$2;->val$icicle:Landroid/os/Bundle;

    iput-wide p4, p0, Lcom/android/browser/Controller$2;->val$currentTabId:J

    iput-boolean p6, p0, Lcom/android/browser/Controller$2;->val$restoreIncognitoTabs:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 403
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v0

    if-ne v0, v7, :cond_13

    .line 404
    iget-object v0, p0, Lcom/android/browser/Controller$2;->this$0:Lcom/android/browser/Controller;

    iget-object v1, p0, Lcom/android/browser/Controller$2;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/browser/OfflineComboViewActivity;->checkOfflineCombinedPageCondition(Lcom/android/browser/Controller;Landroid/content/Intent;)V

    .line 408
    :cond_13
    iget-object v0, p0, Lcom/android/browser/Controller$2;->this$0:Lcom/android/browser/Controller;

    iget-object v1, p0, Lcom/android/browser/Controller$2;->val$icicle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/browser/Controller$2;->val$intent:Landroid/content/Intent;

    iget-wide v3, p0, Lcom/android/browser/Controller$2;->val$currentTabId:J

    iget-boolean v5, p0, Lcom/android/browser/Controller$2;->val$restoreIncognitoTabs:Z

    #calls: Lcom/android/browser/Controller;->onPreloginFinished(Landroid/os/Bundle;Landroid/content/Intent;JZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/browser/Controller;->access$100(Lcom/android/browser/Controller;Landroid/os/Bundle;Landroid/content/Intent;JZ)V

    .line 411
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v0

    if-ne v0, v7, :cond_31

    .line 412
    iget-object v0, p0, Lcom/android/browser/Controller$2;->this$0:Lcom/android/browser/Controller;

    iget-object v1, p0, Lcom/android/browser/Controller$2;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/browser/OfflineComboViewActivity;->loadOfflineCombinedPageOnStartup(Lcom/android/browser/Controller;Landroid/content/Intent;)V

    .line 416
    :cond_31
    return-void
.end method
