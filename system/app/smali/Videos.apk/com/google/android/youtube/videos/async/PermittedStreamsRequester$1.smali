.class Lcom/google/android/youtube/videos/async/PermittedStreamsRequester$1;
.super Ljava/lang/Object;
.source "PermittedStreamsRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/RequestConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/RequestConverter",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester$1;->this$0:Lcom/google/android/youtube/videos/async/PermittedStreamsRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertRequest(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 55
    check-cast p1, Lcom/google/android/youtube/core/model/Purchase;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/async/PermittedStreamsRequester$1;->convertRequest(Lcom/google/android/youtube/core/model/Purchase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertRequest(Lcom/google/android/youtube/core/model/Purchase;)Ljava/lang/String;
    .registers 3
    .parameter "request"

    .prologue
    .line 57
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    return-object v0
.end method
