.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommentsResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private comment_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;",
            ">;"
        }
    .end annotation
.end field

.field private hasNumTotalEntries:Z

.field private hasSelfComment:Z

.field private numTotalEntries_:J

.field private selfComment_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 5035
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5039
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->comment_:Ljava/util/List;

    .line 5073
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->numTotalEntries_:J

    .line 5090
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->selfComment_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    .line 5132
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->cachedSize:I

    .line 5035
    return-void
.end method


# virtual methods
.method public addComment(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 5056
    if-nez p1, :cond_8

    .line 5057
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5059
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->comment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5060
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->comment_:Ljava/util/List;

    .line 5062
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5063
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 5134
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 5136
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->getSerializedSize()I

    .line 5138
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->cachedSize:I

    return v0
.end method

.method public getCommentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5042
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->comment_:Ljava/util/List;

    return-object v0
.end method

.method public getNumTotalEntries()J
    .registers 3

    .prologue
    .line 5074
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->numTotalEntries_:J

    return-wide v0
.end method

.method public getSelfComment()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    .registers 2

    .prologue
    .line 5092
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->selfComment_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 5142
    const/4 v2, 0x0

    .line 5143
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->getCommentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    .line 5144
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    .line 5147
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->hasNumTotalEntries()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 5148
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->getNumTotalEntries()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5151
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->hasSelfComment()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 5152
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->getSelfComment()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5155
    :cond_3c
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->cachedSize:I

    .line 5156
    return v2
.end method

.method public hasNumTotalEntries()Z
    .registers 2

    .prologue
    .line 5075
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->hasNumTotalEntries:Z

    return v0
.end method

.method public hasSelfComment()Z
    .registers 2

    .prologue
    .line 5091
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->hasSelfComment:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5163
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5164
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 5168
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5169
    :sswitch_d
    return-object p0

    .line 5174
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;-><init>()V

    .line 5175
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5176
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->addComment(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    goto :goto_0

    .line 5180
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->setNumTotalEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    goto :goto_0

    .line 5184
    :sswitch_22
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;-><init>()V

    .line 5185
    .restart local v1       #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5186
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->setSelfComment(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    goto :goto_0

    .line 5164
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1a
        0x1a -> :sswitch_22
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
    .line 5033
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setNumTotalEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 5077
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->hasNumTotalEntries:Z

    .line 5078
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->numTotalEntries_:J

    .line 5079
    return-object p0
.end method

.method public setSelfComment(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 5094
    if-nez p1, :cond_8

    .line 5095
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5097
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->hasSelfComment:Z

    .line 5098
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->selfComment_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    .line 5099
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5121
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->getCommentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    .line 5122
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 5124
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->hasNumTotalEntries()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 5125
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->getNumTotalEntries()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 5127
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->hasSelfComment()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 5128
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->getSelfComment()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5130
    :cond_35
    return-void
.end method
