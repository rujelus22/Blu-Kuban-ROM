.class Landroid/support/place/connector/BrokerConnection$Callback$2;
.super Ljava/lang/Object;
.source "BrokerConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/place/connector/BrokerConnection$Callback;->sendPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/place/connector/BrokerConnection$Callback;

.field final synthetic val$place:Landroid/support/place/connector/PlaceInfo;


# direct methods
.method constructor <init>(Landroid/support/place/connector/BrokerConnection$Callback;Landroid/support/place/connector/PlaceInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Landroid/support/place/connector/BrokerConnection$Callback$2;->this$1:Landroid/support/place/connector/BrokerConnection$Callback;

    iput-object p2, p0, Landroid/support/place/connector/BrokerConnection$Callback$2;->val$place:Landroid/support/place/connector/PlaceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 268
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection$Callback$2;->this$1:Landroid/support/place/connector/BrokerConnection$Callback;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$Callback;->this$0:Landroid/support/place/connector/BrokerConnection;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection$Callback$2;->val$place:Landroid/support/place/connector/PlaceInfo;

    #calls: Landroid/support/place/connector/BrokerConnection;->handlePlaceConnected(Landroid/support/place/connector/PlaceInfo;)V
    invoke-static {v0, v1}, Landroid/support/place/connector/BrokerConnection;->access$300(Landroid/support/place/connector/BrokerConnection;Landroid/support/place/connector/PlaceInfo;)V

    .line 269
    return-void
.end method
