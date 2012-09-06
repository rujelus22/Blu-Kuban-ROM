.class final Landroid/support/place/api/lighting/LightingService$_ResultDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcResultHandler;


# instance fields
.field private callback:Ljava/lang/Object;

.field private methodId:I

.field final synthetic this$0:Landroid/support/place/api/lighting/LightingService;


# direct methods
.method public constructor <init>(Landroid/support/place/api/lighting/LightingService;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Landroid/support/place/api/lighting/LightingService$_ResultDispatcher;->this$0:Landroid/support/place/api/lighting/LightingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p2, p0, Landroid/support/place/api/lighting/LightingService$_ResultDispatcher;->methodId:I

    .line 129
    iput-object p3, p0, Landroid/support/place/api/lighting/LightingService$_ResultDispatcher;->callback:Ljava/lang/Object;

    .line 130
    return-void
.end method


# virtual methods
.method public final listLights([B)V
    .registers 4
    .parameter

    .prologue
    .line 144
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 146
    const-string v1, "_result"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    .line 147
    iget-object v0, p0, Landroid/support/place/api/lighting/LightingService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 148
    iget-object v0, p0, Landroid/support/place/api/lighting/LightingService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/api/lighting/LightingService$OnListLights;

    invoke-interface {v0, v1}, Landroid/support/place/api/lighting/LightingService$OnListLights;->onListLights(Landroid/support/place/rpc/RpcData;)V

    .line 150
    :cond_16
    return-void
.end method

.method public final onResult([B)V
    .registers 3
    .parameter

    .prologue
    .line 133
    iget v0, p0, Landroid/support/place/api/lighting/LightingService$_ResultDispatcher;->methodId:I

    packed-switch v0, :pswitch_data_a

    .line 141
    :goto_5
    return-void

    .line 137
    :pswitch_6
    invoke-virtual {p0, p1}, Landroid/support/place/api/lighting/LightingService$_ResultDispatcher;->listLights([B)V

    goto :goto_5

    .line 133
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
