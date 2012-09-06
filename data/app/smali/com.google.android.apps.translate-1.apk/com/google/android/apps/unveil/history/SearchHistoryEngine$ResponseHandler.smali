.class abstract Lcom/google/android/apps/unveil/history/SearchHistoryEngine$ResponseHandler;
.super Ljava/lang/Object;
.source "SearchHistoryEngine.java"

# interfaces
.implements Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/history/SearchHistoryEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ResponseHandler"
.end annotation


# instance fields
.field private final listener:Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;

.field final synthetic this$0:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/history/SearchHistoryEngine;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V
    .registers 3
    .parameter
    .parameter "listener"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$ResponseHandler;->this$0:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$ResponseHandler;->listener:Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;

    .line 121
    return-void
.end method


# virtual methods
.method public final onResponseReceived(Lcom/google/android/apps/unveil/network/fetch/FetchResponse;)V
    .registers 3
    .parameter "fetchResponse"

    .prologue
    .line 125
    invoke-static {p1}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->isValid(Lcom/google/android/apps/unveil/network/fetch/FetchResponse;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$ResponseHandler;->listener:Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;->onError()V

    .line 133
    :goto_b
    return-void

    .line 130
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$ResponseHandler;->this$0:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

    #getter for: Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->xsrfTokenManager:Lcom/google/android/apps/unveil/history/XsrfTokenManager;
    invoke-static {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->access$000(Lcom/google/android/apps/unveil/history/SearchHistoryEngine;)Lcom/google/android/apps/unveil/history/XsrfTokenManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->handleGetResponse(Lcom/google/android/apps/unveil/network/fetch/FetchResponse;)V

    .line 132
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$ResponseHandler;->onValidResponse(Ljava/lang/String;)V

    goto :goto_b
.end method

.method protected abstract onValidResponse(Ljava/lang/String;)V
.end method
