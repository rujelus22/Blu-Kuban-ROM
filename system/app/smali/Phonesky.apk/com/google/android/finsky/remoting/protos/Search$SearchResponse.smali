.class public final Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchResponse"
.end annotation


# instance fields
.field private aggregateQuery_:Z

.field private bucket_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$Bucket;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private doc_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;",
            ">;"
        }
    .end annotation
.end field

.field private hasAggregateQuery:Z

.field private hasOriginalQuery:Z

.field private hasSuggestedQuery:Z

.field private originalQuery_:Ljava/lang/String;

.field private relatedSearch_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;",
            ">;"
        }
    .end annotation
.end field

.field private suggestedQuery_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->originalQuery_:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->suggestedQuery_:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->aggregateQuery_:Z

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->bucket_:Ljava/util/List;

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->doc_:Ljava/util/List;

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->relatedSearch_:Ljava/util/List;

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public addBucket(Lcom/google/android/finsky/remoting/protos/DocList$Bucket;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 81
    if-nez p1, :cond_8

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 84
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->bucket_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->bucket_:Ljava/util/List;

    .line 87
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->bucket_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-object p0
.end method

.method public addDoc(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 114
    if-nez p1, :cond_8

    .line 115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 117
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->doc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->doc_:Ljava/util/List;

    .line 120
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->doc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-object p0
.end method

.method public addRelatedSearch(Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 147
    if-nez p1, :cond_8

    .line 148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 150
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->relatedSearch_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->relatedSearch_:Ljava/util/List;

    .line 153
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->relatedSearch_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-object p0
.end method

.method public getAggregateQuery()Z
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->aggregateQuery_:Z

    return v0
.end method

.method public getBucketList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$Bucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->bucket_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->cachedSize:I

    if-gez v0, :cond_7

    .line 208
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getSerializedSize()I

    .line 210
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->cachedSize:I

    return v0
.end method

.method public getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "index"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->doc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    return-object v0
.end method

.method public getDocCount()I
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->doc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDocList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->doc_:Ljava/util/List;

    return-object v0
.end method

.method public getOriginalQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->originalQuery_:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedSearchList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->relatedSearch_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasOriginalQuery()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 216
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getOriginalQuery()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 219
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasSuggestedQuery()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 220
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getSuggestedQuery()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 223
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasAggregateQuery()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 224
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getAggregateQuery()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 227
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getBucketList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    .line 228
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_39

    .line 231
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getDocList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 232
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_54

    .line 235
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_67
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getRelatedSearchList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    .line 236
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_6f

    .line 239
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    :cond_82
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->cachedSize:I

    .line 240
    return v2
.end method

.method public getSuggestedQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->suggestedQuery_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAggregateQuery()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasAggregateQuery:Z

    return v0
.end method

.method public hasOriginalQuery()Z
    .registers 2

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasOriginalQuery:Z

    return v0
.end method

.method public hasSuggestedQuery()Z
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasSuggestedQuery:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 248
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_4a

    .line 252
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    :sswitch_d
    return-object p0

    .line 258
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->setOriginalQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    goto :goto_0

    .line 262
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->setSuggestedQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    goto :goto_0

    .line 266
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->setAggregateQuery(Z)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    goto :goto_0

    .line 270
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;-><init>()V

    .line 271
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 272
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->addBucket(Lcom/google/android/finsky/remoting/protos/DocList$Bucket;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    goto :goto_0

    .line 276
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :sswitch_32
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;-><init>()V

    .line 277
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 278
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->addDoc(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    goto :goto_0

    .line 282
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :sswitch_3e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;-><init>()V

    .line 283
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 284
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->addRelatedSearch(Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    goto :goto_0

    .line 248
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_32
        0x32 -> :sswitch_3e
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAggregateQuery(Z)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasAggregateQuery:Z

    .line 53
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->aggregateQuery_:Z

    .line 54
    return-object p0
.end method

.method public setOriginalQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasOriginalQuery:Z

    .line 19
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->originalQuery_:Ljava/lang/String;

    .line 20
    return-object p0
.end method

.method public setSuggestedQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasSuggestedQuery:Z

    .line 36
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->suggestedQuery_:Ljava/lang/String;

    .line 37
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
    .line 184
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasOriginalQuery()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 185
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getOriginalQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 187
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasSuggestedQuery()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 188
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getSuggestedQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 190
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasAggregateQuery()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 191
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getAggregateQuery()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 193
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getBucketList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    .line 194
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_32

    .line 196
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getDocList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 197
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_4b

    .line 199
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getRelatedSearchList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    .line 200
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_64

    .line 202
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    :cond_75
    return-void
.end method
