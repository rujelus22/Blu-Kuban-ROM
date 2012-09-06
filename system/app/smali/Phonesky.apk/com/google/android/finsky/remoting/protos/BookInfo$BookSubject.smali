.class public final Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BookInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BookSubject"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasName:Z

.field private hasQuery:Z

.field private hasSubjectId:Z

.field private name_:Ljava/lang/String;

.field private query_:Ljava/lang/String;

.field private subjectId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->name_:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->query_:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->subjectId_:Ljava/lang/String;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->cachedSize:I

    if-gez v0, :cond_7

    .line 96
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->getSerializedSize()I

    .line 98
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->cachedSize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasName()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 105
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 109
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasSubjectId()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 113
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_31
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->cachedSize:I

    .line 117
    return v0
.end method

.method public getSubjectId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->subjectId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasName:Z

    return v0
.end method

.method public hasQuery()Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasQuery:Z

    return v0
.end method

.method public hasSubjectId()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasSubjectId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 126
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    :sswitch_d
    return-object p0

    .line 136
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;

    goto :goto_0

    .line 140
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->setQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;

    goto :goto_0

    .line 144
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->setSubjectId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;

    goto :goto_0

    .line 126
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    .registers 3
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasName:Z

    .line 20
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->name_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    .registers 3
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasQuery:Z

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->query_:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public setSubjectId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    .registers 3
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasSubjectId:Z

    .line 54
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->subjectId_:Ljava/lang/String;

    .line 55
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
    .line 80
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasName()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 83
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 84
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 86
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->hasSubjectId()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 87
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 89
    :cond_2a
    return-void
.end method
