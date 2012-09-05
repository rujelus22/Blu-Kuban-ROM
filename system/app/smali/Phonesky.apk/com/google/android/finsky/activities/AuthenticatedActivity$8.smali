.class Lcom/google/android/finsky/activities/AuthenticatedActivity$8;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->loadTocAndContinue(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

.field final synthetic val$responseReceived:[Z

.field final synthetic val$shouldHandleIntent:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;[ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->val$responseReceived:[Z

    iput-boolean p3, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->val$shouldHandleIntent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V
    .registers 7
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 796
    iget-object v2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->val$responseReceived:[Z

    aget-boolean v2, v2, v3

    if-ne v2, v4, :cond_1e

    .line 797
    new-instance v0, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

    iget-object v2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;-><init>(Landroid/content/Context;)V

    .line 799
    .local v0, deferrer:Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;
    new-instance v2, Lcom/google/android/finsky/activities/AuthenticatedActivity$8$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$8$1;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity$8;)V

    const/16 v3, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;->runOnApplicationClose(Ljava/lang/Runnable;I)V

    .line 819
    .end local v0           #deferrer:Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;
    :goto_1d
    return-void

    .line 809
    :cond_1e
    iget-object v2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->val$responseReceived:[Z

    aput-boolean v4, v2, v3

    .line 811
    new-instance v1, Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {v1, p1}, Lcom/google/android/finsky/api/model/DfeToc;-><init>(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V

    .line 813
    .local v1, newToc:Lcom/google/android/finsky/api/model/DfeToc;
    sget-object v2, Lcom/google/android/finsky/config/G;->enableCorpusWidgets:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 814
    iget-object v2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    #calls: Lcom/google/android/finsky/activities/AuthenticatedActivity;->updateWidgetStates(Lcom/google/android/finsky/api/model/DfeToc;)V
    invoke-static {v2, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$200(Lcom/google/android/finsky/activities/AuthenticatedActivity;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 817
    :cond_3a
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/FinskyApp;->setToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 818
    iget-object v2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iget-boolean v3, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->val$shouldHandleIntent:Z

    #calls: Lcom/google/android/finsky/activities/AuthenticatedActivity;->checkTosAcceptanceAndContinue(Z)V
    invoke-static {v2, v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$300(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V

    goto :goto_1d
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 789
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;->onResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V

    return-void
.end method
