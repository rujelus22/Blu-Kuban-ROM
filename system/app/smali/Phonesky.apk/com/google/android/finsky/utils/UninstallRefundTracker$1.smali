.class Lcom/google/android/finsky/utils/UninstallRefundTracker$1;
.super Ljava/lang/Object;
.source "UninstallRefundTracker.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/UninstallRefundTracker;->refundIfNecessary(Ljava/lang/String;)V
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
        "Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/UninstallRefundTracker;

.field final synthetic val$localAsset:Lcom/google/android/finsky/local/LocalAsset;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/UninstallRefundTracker;Lcom/google/android/finsky/local/LocalAsset;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker$1;->this$0:Lcom/google/android/finsky/utils/UninstallRefundTracker;

    iput-object p2, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker$1;->val$localAsset:Lcom/google/android/finsky/local/LocalAsset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;)V
    .registers 8
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 87
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->getResult()I

    move-result v1

    .line 88
    .local v1, refundResult:I
    packed-switch v1, :pswitch_data_46

    .line 110
    :goto_9
    return-void

    .line 90
    :pswitch_a
    iget-object v2, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker$1;->val$localAsset:Lcom/google/android/finsky/local/LocalAsset;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/finsky/local/LocalAsset;->setRefundPeriodEndTime(Ljava/lang/Long;)V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    .local v0, handler:Landroid/os/Handler;
    new-instance v2, Lcom/google/android/finsky/utils/UninstallRefundTracker$1$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/utils/UninstallRefundTracker$1$1;-><init>(Lcom/google/android/finsky/utils/UninstallRefundTracker$1;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    .line 102
    .end local v0           #handler:Landroid/os/Handler;
    :pswitch_27
    const-string v2, "Bad refund request: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->getResultDetail()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 106
    :pswitch_35
    const-string v2, "Cannot refund asset removed by package manager: %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker$1;->val$localAsset:Lcom/google/android/finsky/local/LocalAsset;

    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 88
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_a
        :pswitch_27
        :pswitch_35
    .end packed-switch
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/UninstallRefundTracker$1;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;)V

    return-void
.end method
