.class Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$2;
.super Ljava/lang/Object;
.source "OtherThreadResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;->onResponse(Lcom/google/android/apps/unveil/network/UnveilResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;

.field final synthetic val$response:Lcom/google/android/apps/unveil/network/UnveilResponse;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;Lcom/google/android/apps/unveil/network/UnveilResponse;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    .local p0, this:Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$2;,"Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler.2;"
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$2;->this$0:Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;

    iput-object p2, p0, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$2;->val$response:Lcom/google/android/apps/unveil/network/UnveilResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$2;,"Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler.2;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$2;->this$0:Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;

    #getter for: Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;->inner:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
    invoke-static {v0}, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;->access$000(Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;)Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$2;->val$response:Lcom/google/android/apps/unveil/network/UnveilResponse;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onResponse(Lcom/google/android/apps/unveil/network/UnveilResponse;)V

    .line 43
    return-void
.end method
