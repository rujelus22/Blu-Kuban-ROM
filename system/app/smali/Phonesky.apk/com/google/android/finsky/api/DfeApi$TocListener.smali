.class Lcom/google/android/finsky/api/DfeApi$TocListener;
.super Ljava/lang/Object;
.source "DfeApi.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/DfeApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TocListener"
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
.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/finsky/api/DfeApi;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Lcom/android/volley/Response$Listener;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p2, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;>;"
    iput-object p1, p0, Lcom/google/android/finsky/api/DfeApi$TocListener;->this$0:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p2, p0, Lcom/google/android/finsky/api/DfeApi$TocListener;->mListener:Lcom/android/volley/Response$Listener;

    .line 263
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasExperiments()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 268
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApi$TocListener;->this$0:Lcom/google/android/finsky/api/DfeApi;

    #getter for: Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;
    invoke-static {v0}, Lcom/google/android/finsky/api/DfeApi;->access$000(Lcom/google/android/finsky/api/DfeApi;)Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getExperiments()Lcom/google/android/finsky/experiments/DfeExperiments;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getExperiments()Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;->getExperimentIdList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/experiments/DfeExperiments;->setExperiments(Ljava/util/Collection;)V

    .line 271
    :cond_1b
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApi$TocListener;->mListener:Lcom/android/volley/Response$Listener;

    if-eqz v0, :cond_24

    .line 272
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApi$TocListener;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 274
    :cond_24
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 258
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/DfeApi$TocListener;->onResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V

    return-void
.end method
