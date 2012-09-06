.class final Landroid/support/place/music/AudioCalibrator$_ResultDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcResultHandler;


# instance fields
.field private callback:Ljava/lang/Object;

.field private methodId:I

.field final synthetic this$0:Landroid/support/place/music/AudioCalibrator;


# direct methods
.method public constructor <init>(Landroid/support/place/music/AudioCalibrator;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Landroid/support/place/music/AudioCalibrator$_ResultDispatcher;->this$0:Landroid/support/place/music/AudioCalibrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p2, p0, Landroid/support/place/music/AudioCalibrator$_ResultDispatcher;->methodId:I

    .line 123
    iput-object p3, p0, Landroid/support/place/music/AudioCalibrator$_ResultDispatcher;->callback:Ljava/lang/Object;

    .line 124
    return-void
.end method


# virtual methods
.method public final getCalibrationOutput([B)V
    .registers 4
    .parameter

    .prologue
    .line 152
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 154
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    iget-object v0, p0, Landroid/support/place/music/AudioCalibrator$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 156
    iget-object v0, p0, Landroid/support/place/music/AudioCalibrator$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/AudioCalibrator$OnGetCalibrationOutput;

    invoke-interface {v0, v1}, Landroid/support/place/music/AudioCalibrator$OnGetCalibrationOutput;->onGetCalibrationOutput(Ljava/lang/String;)V

    .line 158
    :cond_16
    return-void
.end method

.method public final onResult([B)V
    .registers 3
    .parameter

    .prologue
    .line 127
    iget v0, p0, Landroid/support/place/music/AudioCalibrator$_ResultDispatcher;->methodId:I

    packed-switch v0, :pswitch_data_e

    .line 140
    :goto_5
    return-void

    .line 131
    :pswitch_6
    invoke-virtual {p0, p1}, Landroid/support/place/music/AudioCalibrator$_ResultDispatcher;->stopCalibration([B)V

    goto :goto_5

    .line 136
    :pswitch_a
    invoke-virtual {p0, p1}, Landroid/support/place/music/AudioCalibrator$_ResultDispatcher;->getCalibrationOutput([B)V

    goto :goto_5

    .line 127
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method public final stopCalibration([B)V
    .registers 4
    .parameter

    .prologue
    .line 143
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 145
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 146
    iget-object v0, p0, Landroid/support/place/music/AudioCalibrator$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 147
    iget-object v0, p0, Landroid/support/place/music/AudioCalibrator$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/music/AudioCalibrator$OnStopCalibration;

    invoke-interface {v0, v1}, Landroid/support/place/music/AudioCalibrator$OnStopCalibration;->onStopCalibration(Z)V

    .line 149
    :cond_16
    return-void
.end method
