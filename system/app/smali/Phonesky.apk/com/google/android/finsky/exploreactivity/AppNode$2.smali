.class Lcom/google/android/finsky/exploreactivity/AppNode$2;
.super Ljava/lang/Object;
.source "AppNode.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/AppNode;->loadDescription()V
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
.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/AppNode;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/AppNode;)V
    .registers 2
    .parameter

    .prologue
    .line 1199
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/AppNode$2;->this$0:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;)V
    .registers 6
    .parameter "response"

    .prologue
    .line 1204
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->hasDocV2()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1205
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode$2;->this$0:Lcom/google/android/finsky/exploreactivity/AppNode;

    new-instance v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;->getDocV2()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    #setter for: Lcom/google/android/finsky/exploreactivity/AppNode;->mDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v0, v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->access$202(Lcom/google/android/finsky/exploreactivity/AppNode;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;

    .line 1207
    :cond_15
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode$2;->this$0:Lcom/google/android/finsky/exploreactivity/AppNode;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->RECIEVED:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    #setter for: Lcom/google/android/finsky/exploreactivity/AppNode;->mDescriptionState:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;
    invoke-static {v0, v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->access$302(Lcom/google/android/finsky/exploreactivity/AppNode;Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;)Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    .line 1209
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1199
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/exploreactivity/AppNode$2;->onResponse(Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;)V

    return-void
.end method
