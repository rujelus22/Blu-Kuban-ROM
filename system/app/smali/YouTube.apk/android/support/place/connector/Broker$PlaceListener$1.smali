.class Landroid/support/place/connector/Broker$PlaceListener$1;
.super Landroid/support/place/connector/IPlaceListener$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroid/support/place/connector/Broker$PlaceListener;


# direct methods
.method constructor <init>(Landroid/support/place/connector/Broker$PlaceListener;)V
    .registers 2
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Landroid/support/place/connector/Broker$PlaceListener$1;->this$0:Landroid/support/place/connector/Broker$PlaceListener;

    invoke-direct {p0}, Landroid/support/place/connector/IPlaceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaceAdded(Landroid/support/place/connector/PlaceInfo;)V
    .registers 4
    .parameter

    .prologue
    .line 385
    iget-object v0, p0, Landroid/support/place/connector/Broker$PlaceListener$1;->this$0:Landroid/support/place/connector/Broker$PlaceListener;

    iget-object v0, v0, Landroid/support/place/connector/Broker$PlaceListener;->handler:Landroid/os/Handler;

    new-instance v1, Landroid/support/place/connector/Broker$PlaceListener$1$1;

    invoke-direct {v1, p0, p1}, Landroid/support/place/connector/Broker$PlaceListener$1$1;-><init>(Landroid/support/place/connector/Broker$PlaceListener$1;Landroid/support/place/connector/PlaceInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method

.method public onPlaceRemoved(Landroid/support/place/connector/PlaceInfo;)V
    .registers 4
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/place/connector/Broker$PlaceListener$1;->this$0:Landroid/support/place/connector/Broker$PlaceListener;

    iget-object v0, v0, Landroid/support/place/connector/Broker$PlaceListener;->handler:Landroid/os/Handler;

    new-instance v1, Landroid/support/place/connector/Broker$PlaceListener$1$2;

    invoke-direct {v1, p0, p1}, Landroid/support/place/connector/Broker$PlaceListener$1$2;-><init>(Landroid/support/place/connector/Broker$PlaceListener$1;Landroid/support/place/connector/PlaceInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 401
    return-void
.end method

.method public onPlaceUpdated(Landroid/support/place/connector/PlaceInfo;)V
    .registers 4
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Landroid/support/place/connector/Broker$PlaceListener$1;->this$0:Landroid/support/place/connector/Broker$PlaceListener;

    iget-object v0, v0, Landroid/support/place/connector/Broker$PlaceListener;->handler:Landroid/os/Handler;

    new-instance v1, Landroid/support/place/connector/Broker$PlaceListener$1$3;

    invoke-direct {v1, p0, p1}, Landroid/support/place/connector/Broker$PlaceListener$1$3;-><init>(Landroid/support/place/connector/Broker$PlaceListener$1;Landroid/support/place/connector/PlaceInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 411
    return-void
.end method
