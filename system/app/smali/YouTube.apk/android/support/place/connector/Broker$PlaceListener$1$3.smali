.class Landroid/support/place/connector/Broker$PlaceListener$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/place/connector/Broker$PlaceListener$1;

.field final synthetic val$place:Landroid/support/place/connector/PlaceInfo;


# direct methods
.method constructor <init>(Landroid/support/place/connector/Broker$PlaceListener$1;Landroid/support/place/connector/PlaceInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Landroid/support/place/connector/Broker$PlaceListener$1$3;->this$1:Landroid/support/place/connector/Broker$PlaceListener$1;

    iput-object p2, p0, Landroid/support/place/connector/Broker$PlaceListener$1$3;->val$place:Landroid/support/place/connector/PlaceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/place/connector/Broker$PlaceListener$1$3;->this$1:Landroid/support/place/connector/Broker$PlaceListener$1;

    iget-object v0, v0, Landroid/support/place/connector/Broker$PlaceListener$1;->this$0:Landroid/support/place/connector/Broker$PlaceListener;

    iget-object v1, p0, Landroid/support/place/connector/Broker$PlaceListener$1$3;->val$place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/Broker$PlaceListener;->onPlaceUpdated(Landroid/support/place/connector/PlaceInfo;)V

    .line 409
    return-void
.end method
