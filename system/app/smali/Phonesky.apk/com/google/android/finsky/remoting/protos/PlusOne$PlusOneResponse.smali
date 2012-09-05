.class public final Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "PlusOne.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/PlusOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusOneResponse"
.end annotation


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;->cachedSize:I

    if-gez v0, :cond_7

    .line 28
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;->getSerializedSize()I

    .line 30
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, size:I
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;->cachedSize:I

    .line 36
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 44
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    :pswitch_d
    return-object p0

    .line 44
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    return-void
.end method
