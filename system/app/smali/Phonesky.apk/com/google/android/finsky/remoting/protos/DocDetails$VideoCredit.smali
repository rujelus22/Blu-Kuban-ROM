.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoCredit"
.end annotation


# instance fields
.field private cachedSize:I

.field private creditType_:I

.field private credit_:Ljava/lang/String;

.field private hasCredit:Z

.field private hasCreditType:Z

.field private name_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2856
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2867
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->creditType_:I

    .line 2884
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->credit_:Ljava/lang/String;

    .line 2900
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->name_:Ljava/util/List;

    .line 2959
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->cachedSize:I

    .line 2856
    return-void
.end method


# virtual methods
.method public addName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    .registers 3
    .parameter "value"

    .prologue
    .line 2917
    if-nez p1, :cond_8

    .line 2918
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2920
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->name_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2921
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->name_:Ljava/util/List;

    .line 2923
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->name_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2924
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2962
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->cachedSize:I

    if-gez v0, :cond_7

    .line 2964
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->getSerializedSize()I

    .line 2966
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->cachedSize:I

    return v0
.end method

.method public getCredit()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->credit_:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditType()I
    .registers 2

    .prologue
    .line 2869
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->creditType_:I

    return v0
.end method

.method public getNameList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->name_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 2971
    const/4 v3, 0x0

    .line 2972
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->hasCreditType()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2973
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->getCreditType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2976
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->hasCredit()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2977
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->getCredit()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2981
    :cond_21
    const/4 v0, 0x0

    .line 2982
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->getNameList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2983
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2a

    .line 2986
    .end local v1           #element:Ljava/lang/String;
    :cond_3c
    add-int/2addr v3, v0

    .line 2987
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->getNameList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2989
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->cachedSize:I

    .line 2990
    return v3
.end method

.method public hasCredit()Z
    .registers 2

    .prologue
    .line 2886
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->hasCredit:Z

    return v0
.end method

.method public hasCreditType()Z
    .registers 2

    .prologue
    .line 2868
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->hasCreditType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2998
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2999
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 3003
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3004
    :sswitch_d
    return-object p0

    .line 3009
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->setCreditType(I)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;

    goto :goto_0

    .line 3013
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->setCredit(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;

    goto :goto_0

    .line 3017
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->addName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;

    goto :goto_0

    .line 2999
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
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
    .line 2853
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;

    move-result-object v0

    return-object v0
.end method

.method public setCredit(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    .registers 3
    .parameter "value"

    .prologue
    .line 2888
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->hasCredit:Z

    .line 2889
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->credit_:Ljava/lang/String;

    .line 2890
    return-object p0
.end method

.method public setCreditType(I)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;
    .registers 3
    .parameter "value"

    .prologue
    .line 2871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->hasCreditType:Z

    .line 2872
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->creditType_:I

    .line 2873
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
    .line 2948
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->hasCreditType()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2949
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->getCreditType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2951
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->hasCredit()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2952
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->getCredit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2954
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;->getNameList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2955
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_24

    .line 2957
    .end local v0           #element:Ljava/lang/String;
    :cond_35
    return-void
.end method
