.class Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;
.super Ljava/lang/Object;
.source "DcbApi.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestQueueErrorListener"
.end annotation


# instance fields
.field private final mErrorListener:Lcom/android/volley/Response$ErrorListener;

.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;Lcom/android/volley/Response$ErrorListener;)V
    .registers 3
    .parameter
    .parameter "errorListener"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 143
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .parameter "error"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mRequestQueue:Lcom/android/volley/RequestQueue;
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->access$000(Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 148
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 149
    return-void
.end method
