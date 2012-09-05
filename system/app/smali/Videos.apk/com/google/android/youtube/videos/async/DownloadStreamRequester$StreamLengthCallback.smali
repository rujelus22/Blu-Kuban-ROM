.class Lcom/google/android/youtube/videos/async/DownloadStreamRequester$StreamLengthCallback;
.super Ljava/lang/Object;
.source "DownloadStreamRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/async/DownloadStreamRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamLengthCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final downloadStream:Lcom/google/android/youtube/core/model/Stream;

.field private final originalCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;"
        }
    .end annotation
.end field

.field private final originalRequest:Lcom/google/android/youtube/core/model/Purchase;

.field final synthetic this$0:Lcom/google/android/youtube/videos/async/DownloadStreamRequester;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/async/DownloadStreamRequester;Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/core/model/Stream;)V
    .registers 5
    .parameter
    .parameter "originalRequest"
    .parameter
    .parameter "downloadStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p3, originalCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/Stream;>;"
    iput-object p1, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$StreamLengthCallback;->this$0:Lcom/google/android/youtube/videos/async/DownloadStreamRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$StreamLengthCallback;->originalRequest:Lcom/google/android/youtube/core/model/Purchase;

    .line 78
    iput-object p3, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$StreamLengthCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 79
    iput-object p4, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$StreamLengthCallback;->downloadStream:Lcom/google/android/youtube/core/model/Stream;

    .line 80
    return-void
.end method


# virtual methods
.method public onError(Landroid/net/Uri;Ljava/lang/Exception;)V
    .registers 6
    .parameter "innerRequest"
    .parameter "exception"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$StreamLengthCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$StreamLengthCallback;->originalRequest:Lcom/google/android/youtube/core/model/Purchase;

    iget-object v2, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$StreamLengthCallback;->downloadStream:Lcom/google/android/youtube/core/model/Stream;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$StreamLengthCallback;->onError(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/net/Uri;Ljava/lang/Long;)V
    .registers 9
    .parameter "request"
    .parameter "response"

    .prologue
    .line 83
    move-object v0, p2

    .line 84
    .local v0, downloadStreamLength:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_32

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid content length ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    .line 89
    :cond_32
    iget-object v2, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$StreamLengthCallback;->downloadStream:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes(J)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    .line 90
    .local v1, sizedStream:Lcom/google/android/youtube/core/model/Stream;
    iget-object v2, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$StreamLengthCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$StreamLengthCallback;->originalRequest:Lcom/google/android/youtube/core/model/Purchase;

    invoke-interface {v2, v3, v1}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$StreamLengthCallback;->onResponse(Landroid/net/Uri;Ljava/lang/Long;)V

    return-void
.end method
