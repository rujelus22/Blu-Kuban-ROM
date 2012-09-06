.class public Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;
.super Ljava/lang/Object;
.source "AtHomeMediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AtHomeReceiver"
.end annotation


# instance fields
.field private mConnectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/place/connector/ConnectorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceSerialNumber:Ljava/lang/String;

.field private mRoute:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/Object;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter "route"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/connector/ConnectorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p3, connectors:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/connector/ConnectorInfo;>;"
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;->this$0:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;->mRoute:Ljava/lang/Object;

    .line 352
    iput-object p3, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;->mConnectors:Ljava/util/List;

    .line 353
    return-void
.end method

.method constructor <init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "route"
    .parameter
    .parameter "deviceSerialNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/connector/ConnectorInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 356
    .local p3, connectors:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/connector/ConnectorInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/Object;Ljava/util/List;)V

    .line 357
    iput-object p4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;->mDeviceSerialNumber:Ljava/lang/String;

    .line 358
    return-void
.end method


# virtual methods
.method public getConnectors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/connector/ConnectorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;->mConnectors:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;->mDeviceSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRoute()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;->mRoute:Ljava/lang/Object;

    return-object v0
.end method
