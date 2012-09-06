.class Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup$1;
.super Ljava/lang/Object;
.source "RpcBasedSmsCostLookup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->initiateLookup(Ljava/lang/String;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;

.field final synthetic val$destinationNumber:Ljava/lang/String;

.field final synthetic val$rpc:Lcom/google/android/apps/googlevoice/net/GetRatesRpc;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;Ljava/lang/String;Lcom/google/android/apps/googlevoice/net/GetRatesRpc;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup$1;->this$0:Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup$1;->val$destinationNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup$1;->val$rpc:Lcom/google/android/apps/googlevoice/net/GetRatesRpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup$1;->this$0:Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup$1;->val$destinationNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup$1;->val$rpc:Lcom/google/android/apps/googlevoice/net/GetRatesRpc;

    #calls: Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->onRpcDone(Ljava/lang/String;Lcom/google/android/apps/googlevoice/net/GetRatesRpc;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;->access$000(Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;Ljava/lang/String;Lcom/google/android/apps/googlevoice/net/GetRatesRpc;)V

    .line 70
    return-void
.end method
