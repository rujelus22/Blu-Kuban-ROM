.class Lcom/google/android/finsky/exploreactivity/NodeController$6;
.super Ljava/lang/Object;
.source "NodeController.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocWrapper;ILcom/android/volley/Request$Priority;)V
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
        "Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

.field final synthetic val$doc:Lcom/google/android/finsky/exploreactivity/DocWrapper;

.field final synthetic val$priority:Lcom/android/volley/Request$Priority;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DocWrapper;ILcom/android/volley/Request$Priority;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 989
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$6;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/NodeController$6;->val$doc:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    iput p3, p0, Lcom/google/android/finsky/exploreactivity/NodeController$6;->val$state:I

    iput-object p4, p0, Lcom/google/android/finsky/exploreactivity/NodeController$6;->val$priority:Lcom/android/volley/Request$Priority;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;)V
    .registers 6
    .parameter "response"

    .prologue
    .line 992
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV2()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 993
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController$6;->val$doc:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    new-instance v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getDocV2()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->setDoc(Lcom/google/android/finsky/api/model/Document;)V

    .line 996
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController$6;->val$doc:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->markLoaded(I)V

    .line 997
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController$6;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$6;->val$doc:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController$6;->val$state:I

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController$6;->val$priority:Lcom/android/volley/Request$Priority;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocWrapper;ILcom/android/volley/Request$Priority;)V

    .line 999
    :cond_26
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 989
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController$6;->onResponse(Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;)V

    return-void
.end method
