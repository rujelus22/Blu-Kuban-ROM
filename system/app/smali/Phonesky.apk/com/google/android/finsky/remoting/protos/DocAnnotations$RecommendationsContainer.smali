.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecommendationsContainer"
.end annotation


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2319
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2334
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;->cachedSize:I

    .line 2319
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2337
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;->cachedSize:I

    if-gez v0, :cond_7

    .line 2339
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;->getSerializedSize()I

    .line 2341
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 2

    .prologue
    .line 2346
    const/4 v0, 0x0

    .line 2347
    .local v0, size:I
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;->cachedSize:I

    .line 2348
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2356
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2357
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 2361
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2362
    :pswitch_d
    return-object p0

    .line 2357
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2316
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 2
    .parameter "output"

    .prologue
    .line 2332
    return-void
.end method
