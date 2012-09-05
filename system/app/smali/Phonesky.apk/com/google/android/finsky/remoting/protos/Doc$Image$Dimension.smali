.class public final Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc$Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dimension"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasHeight:Z

.field private hasWidth:Z

.field private height_:I

.field private width_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 31
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->width_:I

    .line 48
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->height_:I

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->cachedSize:I

    .line 26
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->cachedSize:I

    if-gez v0, :cond_7

    .line 89
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getSerializedSize()I

    .line 91
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->cachedSize:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->height_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->hasWidth()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 97
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->hasHeight()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 101
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->cachedSize:I

    .line 105
    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->width_:I

    return v0
.end method

.method public hasHeight()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->hasHeight:Z

    return v0
.end method

.method public hasWidth()Z
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->hasWidth:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 113
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    :sswitch_d
    return-object p0

    .line 123
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->setWidth(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    goto :goto_0

    .line 127
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->setHeight(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    goto :goto_0

    .line 113
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0x18 -> :sswitch_e
        0x20 -> :sswitch_16
    .end sparse-switch
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
    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v0

    return-object v0
.end method

.method public setHeight(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    .registers 3
    .parameter "value"

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->hasHeight:Z

    .line 53
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->height_:I

    .line 54
    return-object p0
.end method

.method public setWidth(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    .registers 3
    .parameter "value"

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->hasWidth:Z

    .line 36
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->width_:I

    .line 37
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 78
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 80
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 81
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 83
    :cond_1c
    return-void
.end method
