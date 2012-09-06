.class Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$1;
.super Ljava/lang/Object;
.source "OtherThreadResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;->onNetworkError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 29
    .local p0, this:Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$1;,"Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler.1;"
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$1;->this$0:Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 32
    .local p0, this:Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$1;,"Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler.1;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$1;->this$0:Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;

    #getter for: Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;->inner:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
    invoke-static {v0}, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;->access$000(Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;)Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onNetworkError()V

    .line 33
    return-void
.end method
