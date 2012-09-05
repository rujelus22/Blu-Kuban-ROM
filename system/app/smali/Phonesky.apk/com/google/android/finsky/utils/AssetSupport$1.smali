.class final Lcom/google/android/finsky/utils/AssetSupport$1;
.super Ljava/lang/Object;
.source "AssetSupport.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/AssetSupport;->refund(Ljava/lang/String;Lcom/google/android/finsky/utils/AssetSupport$RefundListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$listener:Lcom/google/android/finsky/utils/AssetSupport$RefundListener;

.field final synthetic val$localAsset:Lcom/google/android/finsky/local/LocalAsset;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/utils/AssetSupport$RefundListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/finsky/utils/AssetSupport$1;->val$localAsset:Lcom/google/android/finsky/local/LocalAsset;

    iput-object p2, p0, Lcom/google/android/finsky/utils/AssetSupport$1;->val$listener:Lcom/google/android/finsky/utils/AssetSupport$RefundListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;)V
    .registers 6
    .parameter "response"

    .prologue
    const-wide/16 v2, 0x0

    .line 57
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;->getResult()I

    move-result v0

    .line 58
    .local v0, refundResult:I
    packed-switch v0, :pswitch_data_34

    .line 71
    :goto_9
    return-void

    .line 60
    :pswitch_a
    iget-object v1, p0, Lcom/google/android/finsky/utils/AssetSupport$1;->val$localAsset:Lcom/google/android/finsky/local/LocalAsset;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/finsky/local/LocalAsset;->setRefundPeriodEndTime(Ljava/lang/Long;)V

    .line 61
    iget-object v1, p0, Lcom/google/android/finsky/utils/AssetSupport$1;->val$listener:Lcom/google/android/finsky/utils/AssetSupport$RefundListener;

    sget-object v2, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;->SUCCESS:Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/utils/AssetSupport$RefundListener;->onComplete(Lcom/google/android/finsky/utils/AssetSupport$RefundResult;)V

    goto :goto_9

    .line 64
    :pswitch_1b
    iget-object v1, p0, Lcom/google/android/finsky/utils/AssetSupport$1;->val$localAsset:Lcom/google/android/finsky/local/LocalAsset;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/finsky/local/LocalAsset;->setRefundPeriodEndTime(Ljava/lang/Long;)V

    .line 65
    iget-object v1, p0, Lcom/google/android/finsky/utils/AssetSupport$1;->val$listener:Lcom/google/android/finsky/utils/AssetSupport$RefundListener;

    sget-object v2, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;->CANNOT_REFUND:Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/utils/AssetSupport$RefundListener;->onComplete(Lcom/google/android/finsky/utils/AssetSupport$RefundResult;)V

    goto :goto_9

    .line 68
    :pswitch_2c
    iget-object v1, p0, Lcom/google/android/finsky/utils/AssetSupport$1;->val$listener:Lcom/google/android/finsky/utils/AssetSupport$RefundListener;

    sget-object v2, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;->BAD_REQUEST:Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/utils/AssetSupport$RefundListener;->onComplete(Lcom/google/android/finsky/utils/AssetSupport$RefundResult;)V

    goto :goto_9

    .line 58
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_a
        :pswitch_2c
        :pswitch_1b
    .end packed-switch
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/AssetSupport$1;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;)V

    return-void
.end method
