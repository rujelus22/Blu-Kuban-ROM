.class final Lcom/google/android/youtube/videos/async/CallbackChainingRequester$ChainingCallback;
.super Ljava/lang/Object;
.source "CallbackChainingRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/async/CallbackChainingRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChainingCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<TR;TE;>;"
    }
.end annotation


# instance fields
.field private final originalCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/youtube/videos/async/CallbackChainingRequester;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/async/CallbackChainingRequester;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lcom/google/android/youtube/videos/async/CallbackChainingRequester$ChainingCallback;,"Lcom/google/android/youtube/videos/async/CallbackChainingRequester<TR;TE;>.ChainingCallback;"
    .local p2, originalCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    iput-object p1, p0, Lcom/google/android/youtube/videos/async/CallbackChainingRequester$ChainingCallback;->this$0:Lcom/google/android/youtube/videos/async/CallbackChainingRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/google/android/youtube/videos/async/CallbackChainingRequester$ChainingCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 39
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/google/android/youtube/videos/async/CallbackChainingRequester$ChainingCallback;,"Lcom/google/android/youtube/videos/async/CallbackChainingRequester<TR;TE;>.ChainingCallback;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/CallbackChainingRequester$ChainingCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/CallbackChainingRequester$ChainingCallback;->this$0:Lcom/google/android/youtube/videos/async/CallbackChainingRequester;

    #getter for: Lcom/google/android/youtube/videos/async/CallbackChainingRequester;->secondCallback:Lcom/google/android/youtube/core/async/Callback;
    invoke-static {v0}, Lcom/google/android/youtube/videos/async/CallbackChainingRequester;->access$000(Lcom/google/android/youtube/videos/async/CallbackChainingRequester;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 49
    return-void
.end method

.method public onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TE;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/youtube/videos/async/CallbackChainingRequester$ChainingCallback;,"Lcom/google/android/youtube/videos/async/CallbackChainingRequester<TR;TE;>.ChainingCallback;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, response:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/CallbackChainingRequester$ChainingCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/CallbackChainingRequester$ChainingCallback;->this$0:Lcom/google/android/youtube/videos/async/CallbackChainingRequester;

    #getter for: Lcom/google/android/youtube/videos/async/CallbackChainingRequester;->secondCallback:Lcom/google/android/youtube/core/async/Callback;
    invoke-static {v0}, Lcom/google/android/youtube/videos/async/CallbackChainingRequester;->access$000(Lcom/google/android/youtube/videos/async/CallbackChainingRequester;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    return-void
.end method
