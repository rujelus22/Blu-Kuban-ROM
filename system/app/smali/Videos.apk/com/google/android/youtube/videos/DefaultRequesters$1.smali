.class Lcom/google/android/youtube/videos/DefaultRequesters$1;
.super Ljava/lang/Object;
.source "DefaultRequesters.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/DefaultRequesters;->createDownloadStreamRequesters()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<",
        "Lcom/google/android/youtube/core/model/Stream;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/DefaultRequesters;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/DefaultRequesters;)V
    .registers 2
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/google/android/youtube/videos/DefaultRequesters$1;->this$0:Lcom/google/android/youtube/videos/DefaultRequesters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertResponse(Lcom/google/android/youtube/core/model/Stream;)Ljava/lang/Long;
    .registers 7
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 375
    iget-wide v0, p1, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    .line 376
    .local v0, size:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_21

    .line 377
    new-instance v2, Lcom/google/android/youtube/core/converter/ConverterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-positive size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 379
    :cond_21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 373
    check-cast p1, Lcom/google/android/youtube/core/model/Stream;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/DefaultRequesters$1;->convertResponse(Lcom/google/android/youtube/core/model/Stream;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
