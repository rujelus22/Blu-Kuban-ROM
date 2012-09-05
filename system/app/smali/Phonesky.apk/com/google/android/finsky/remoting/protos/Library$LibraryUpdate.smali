.class public final Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Library.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Library;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryUpdate"
.end annotation


# instance fields
.field private cachedSize:I

.field private corpus_:I

.field private hasCorpus:Z

.field private hasHasMore:Z

.field private hasMore_:Z

.field private hasServerToken:Z

.field private hasStatus:Z

.field private mutation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;",
            ">;"
        }
    .end annotation
.end field

.field private serverToken_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private status_:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->status_:I

    .line 36
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->corpus_:I

    .line 53
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->serverToken_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->mutation_:Ljava/util/List;

    .line 103
    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasMore_:Z

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public addMutation(Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .registers 3
    .parameter "value"

    .prologue
    .line 86
    if-nez p1, :cond_8

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 89
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->mutation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->mutation_:Ljava/util/List;

    .line 92
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->mutation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->cachedSize:I

    if-gez v0, :cond_7

    .line 158
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getSerializedSize()I

    .line 160
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->cachedSize:I

    return v0
.end method

.method public getCorpus()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->corpus_:I

    return v0
.end method

.method public getHasMore()Z
    .registers 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasMore_:Z

    return v0
.end method

.method public getMutationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->mutation_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasStatus()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 166
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getStatus()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 169
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasCorpus()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 170
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getCorpus()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 173
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasServerToken()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 174
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getServerToken()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 177
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getMutationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    .line 178
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_39

    .line 181
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasHasMore()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 182
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getHasMore()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 185
    :cond_5c
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->cachedSize:I

    .line 186
    return v2
.end method

.method public getServerToken()Lcom/google/protobuf/micro/ByteStringMicro;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->serverToken_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 21
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->status_:I

    return v0
.end method

.method public hasCorpus()Z
    .registers 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasCorpus:Z

    return v0
.end method

.method public hasHasMore()Z
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasHasMore:Z

    return v0
.end method

.method public hasServerToken()Z
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasServerToken:Z

    return v0
.end method

.method public hasStatus()Z
    .registers 2

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasStatus:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 194
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_3a

    .line 198
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    :sswitch_d
    return-object p0

    .line 204
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->setStatus(I)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    goto :goto_0

    .line 208
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->setCorpus(I)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    goto :goto_0

    .line 212
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->setServerToken(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    goto :goto_0

    .line 216
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;-><init>()V

    .line 217
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 218
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->addMutation(Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    goto :goto_0

    .line 222
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->setHasMore(Z)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    goto :goto_0

    .line 194
    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x28 -> :sswitch_32
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v0

    return-object v0
.end method

.method public setCorpus(I)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .registers 3
    .parameter "value"

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasCorpus:Z

    .line 41
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->corpus_:I

    .line 42
    return-object p0
.end method

.method public setHasMore(Z)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .registers 3
    .parameter "value"

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasHasMore:Z

    .line 108
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasMore_:Z

    .line 109
    return-object p0
.end method

.method public setServerToken(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .registers 3
    .parameter "value"

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasServerToken:Z

    .line 58
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->serverToken_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 59
    return-object p0
.end method

.method public setStatus(I)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .registers 3
    .parameter "value"

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasStatus:Z

    .line 24
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->status_:I

    .line 25
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 138
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getStatus()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 140
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasCorpus()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 141
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getCorpus()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 143
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasServerToken()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 144
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getServerToken()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 146
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getMutationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    .line 147
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_32

    .line 149
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasHasMore()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 150
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getHasMore()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 152
    :cond_51
    return-void
.end method
