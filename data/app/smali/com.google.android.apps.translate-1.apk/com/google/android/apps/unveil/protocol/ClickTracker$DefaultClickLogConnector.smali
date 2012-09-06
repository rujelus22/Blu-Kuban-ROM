.class Lcom/google/android/apps/unveil/protocol/ClickTracker$DefaultClickLogConnector;
.super Ljava/lang/Object;
.source "ClickTracker.java"

# interfaces
.implements Lcom/google/android/apps/unveil/protocol/ClickTracker$ClickLogConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/ClickTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultClickLogConnector"
.end annotation


# static fields
.field private static final RESPONSE_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 138
    const-class v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    sput-object v0, Lcom/google/android/apps/unveil/protocol/ClickTracker$DefaultClickLogConnector;->RESPONSE_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/network/AbstractConnector;Ljava/util/concurrent/Executor;)V
    .registers 3
    .parameter "connector"
    .parameter "executor"

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker$DefaultClickLogConnector;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    .line 146
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker$DefaultClickLogConnector;->executor:Ljava/util/concurrent/Executor;

    .line 147
    return-void
.end method


# virtual methods
.method public sendRequest(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V
    .registers 7
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker$DefaultClickLogConnector;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/ClickTracker$DefaultClickLogConnector;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    sget-object v2, Lcom/google/android/apps/unveil/protocol/ClickTracker$DefaultClickLogConnector;->RESPONSE_CLASS:Ljava/lang/Class;

    const-string v3, ""

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/google/android/apps/unveil/network/AbstractConnector;->requestRunnable(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method
