.class Lcom/google/android/apps/unveil/network/AbstractConnector$2;
.super Ljava/lang/Object;
.source "AbstractConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/network/AbstractConnector;->requestRunnable(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/network/AbstractConnector;

.field final synthetic val$request:Lcom/google/protobuf/GeneratedMessageLite;

.field final synthetic val$responseClass:Ljava/lang/Class;

.field final synthetic val$responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

.field final synthetic val$tracingCookie:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/network/AbstractConnector;Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$2;->this$0:Lcom/google/android/apps/unveil/network/AbstractConnector;

    iput-object p2, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$2;->val$request:Lcom/google/protobuf/GeneratedMessageLite;

    iput-object p3, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$2;->val$responseClass:Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$2;->val$tracingCookie:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$2;->val$responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$2;->this$0:Lcom/google/android/apps/unveil/network/AbstractConnector;

    iget-object v1, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$2;->val$request:Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v2, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$2;->val$responseClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$2;->val$tracingCookie:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$2;->val$responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    #calls: Lcom/google/android/apps/unveil/network/AbstractConnector;->doRequestAndHandleResponse(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/unveil/network/AbstractConnector;->access$000(Lcom/google/android/apps/unveil/network/AbstractConnector;Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V

    .line 233
    return-void
.end method
