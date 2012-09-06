.class Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow$1;
.super Ljava/lang/Object;
.source "AtHomeMediaRouter.java"

# interfaces
.implements Landroid/support/place/rpc/RpcErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->onGetDeviceSerialNumber(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;)V
    .registers 2
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow$1;->this$1:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/support/place/rpc/RpcError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 688
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "Error getting device name."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return-void
.end method
