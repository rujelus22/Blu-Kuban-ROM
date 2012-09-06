.class Lcom/google/android/finsky/appstate/UpdateChecker$1$1;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/UpdateChecker$1;->onPostExecute(Ljava/util/List;)V
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
        "Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

.field final synthetic val$docids:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/UpdateChecker$1;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->val$docids:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;)V
    .registers 10
    .parameter "bulkDetailsResponse"

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->getEntryCount()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 104
    .local v1, documents:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->getEntryCount()I

    move-result v4

    if-ge v3, v4, :cond_4d

    .line 105
    invoke-virtual {p1, v3}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->getEntry(I)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;

    move-result-object v2

    .line 106
    .local v2, entry:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->hasDoc()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 107
    new-instance v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->getDoc()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    .line 108
    .local v0, document:Lcom/google/android/finsky/api/model/Document;
    iget-object v4, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iget-object v4, v4, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$gmsCoreHelper:Lcom/google/android/finsky/appstate/GmsCoreHelper;

    invoke-static {v0}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->isGmsCore(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 109
    iget-object v4, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iget-object v4, v4, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$gmsCoreHelper:Lcom/google/android/finsky/appstate/GmsCoreHelper;

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->updateGmsCore(Lcom/google/android/finsky/api/model/Document;)V

    .line 104
    .end local v0           #document:Lcom/google/android/finsky/api/model/Document;
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 112
    .restart local v0       #document:Lcom/google/android/finsky/api/model/Document;
    :cond_37
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 114
    .end local v0           #document:Lcom/google/android/finsky/api/model/Document;
    :cond_3b
    const-string v4, "No document details for app: pkg=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->val$docids:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_34

    .line 118
    .end local v2           #entry:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;
    :cond_4d
    iget-object v4, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iget-object v4, v4, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    iget-object v5, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iget-object v5, v5, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    #getter for: Lcom/google/android/finsky/appstate/UpdateChecker;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/google/android/finsky/appstate/UpdateChecker;->access$200(Lcom/google/android/finsky/appstate/UpdateChecker;)Landroid/content/Context;

    move-result-object v5

    #calls: Lcom/google/android/finsky/appstate/UpdateChecker;->handleUpdates(Landroid/content/Context;Ljava/util/List;)V
    invoke-static {v4, v5, v1}, Lcom/google/android/finsky/appstate/UpdateChecker;->access$300(Lcom/google/android/finsky/appstate/UpdateChecker;Landroid/content/Context;Ljava/util/List;)V

    .line 119
    iget-object v4, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iget-object v4, v4, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$successRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_69

    .line 120
    iget-object v4, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iget-object v4, v4, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$successRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 122
    :cond_69
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->onResponse(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;)V

    return-void
.end method
