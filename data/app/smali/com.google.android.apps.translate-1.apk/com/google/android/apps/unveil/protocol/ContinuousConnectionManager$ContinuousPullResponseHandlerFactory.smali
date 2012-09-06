.class Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousPullResponseHandlerFactory;
.super Ljava/lang/Object;
.source "ContinuousConnectionManager.java"

# interfaces
.implements Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinuousPullResponseHandlerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory",
        "<",
        "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)V
    .registers 2
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousPullResponseHandlerFactory;->this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousPullResponseHandlerFactory;-><init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;)V

    return-void
.end method


# virtual methods
.method public newResponseHandler()Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousPullResponseHandlerFactory;->this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    new-instance v1, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PullResponseHandler;

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$ContinuousPullResponseHandlerFactory;->this$0:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$PullResponseHandler;-><init>(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager$1;)V

    #calls: Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->rerouteToMainThread(Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->access$700(Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    move-result-object v0

    return-object v0
.end method
