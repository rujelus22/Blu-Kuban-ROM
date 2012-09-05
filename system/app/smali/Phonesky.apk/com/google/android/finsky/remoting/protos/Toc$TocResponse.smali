.class public final Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Toc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Toc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TocResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private corpus_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private experiments_:Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

.field private hasExperiments:Z

.field private hasHomeUrl:Z

.field private hasTosCheckboxTextMarketingEmails:Z

.field private hasTosContent:Z

.field private hasTosToken:Z

.field private hasTosVersionDeprecated:Z

.field private hasUserSettings:Z

.field private homeUrl_:Ljava/lang/String;

.field private tosCheckboxTextMarketingEmails_:Ljava/lang/String;

.field private tosContent_:Ljava/lang/String;

.field private tosToken_:Ljava/lang/String;

.field private tosVersionDeprecated_:I

.field private userSettings_:Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosVersionDeprecated_:I

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosContent_:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosCheckboxTextMarketingEmails_:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosToken_:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->homeUrl_:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->experiments_:Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

    .line 152
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->userSettings_:Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public addCorpus(Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 30
    if-nez p1, :cond_8

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    .line 36
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 219
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->cachedSize:I

    if-gez v0, :cond_7

    .line 221
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getSerializedSize()I

    .line 223
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->cachedSize:I

    return v0
.end method

.method public getCorpusCount()I
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCorpusList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    return-object v0
.end method

.method public getExperiments()Lcom/google/android/finsky/remoting/protos/Toc$Experiments;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->experiments_:Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

    return-object v0
.end method

.method public getHomeUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->homeUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getCorpusList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 229
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    .line 232
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosVersionDeprecated()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 233
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosVersionDeprecated()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 236
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosContent()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 237
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 240
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasHomeUrl()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 241
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getHomeUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 244
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasExperiments()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 245
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getExperiments()Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 248
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosCheckboxTextMarketingEmails()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 249
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosCheckboxTextMarketingEmails()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 252
    :cond_6c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosToken()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 253
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 256
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasUserSettings()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 257
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getUserSettings()Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 260
    :cond_8d
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->cachedSize:I

    .line 261
    return v2
.end method

.method public getTosCheckboxTextMarketingEmails()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosCheckboxTextMarketingEmails_:Ljava/lang/String;

    return-object v0
.end method

.method public getTosContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosContent_:Ljava/lang/String;

    return-object v0
.end method

.method public getTosToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getTosVersionDeprecated()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosVersionDeprecated_:I

    return v0
.end method

.method public getUserSettings()Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->userSettings_:Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;

    return-object v0
.end method

.method public hasExperiments()Z
    .registers 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasExperiments:Z

    return v0
.end method

.method public hasHomeUrl()Z
    .registers 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasHomeUrl:Z

    return v0
.end method

.method public hasTosCheckboxTextMarketingEmails()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosCheckboxTextMarketingEmails:Z

    return v0
.end method

.method public hasTosContent()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosContent:Z

    return v0
.end method

.method public hasTosToken()Z
    .registers 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosToken:Z

    return v0
.end method

.method public hasTosVersionDeprecated()Z
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosVersionDeprecated:Z

    return v0
.end method

.method public hasUserSettings()Z
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasUserSettings:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 269
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_5a

    .line 273
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    :sswitch_d
    return-object p0

    .line 279
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;-><init>()V

    .line 280
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 281
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->addCorpus(Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 285
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setTosVersionDeprecated(I)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 289
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setTosContent(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 293
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setHomeUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 297
    :sswitch_32
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Toc$Experiments;-><init>()V

    .line 298
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Toc$Experiments;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 299
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setExperiments(Lcom/google/android/finsky/remoting/protos/Toc$Experiments;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 303
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Toc$Experiments;
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setTosCheckboxTextMarketingEmails(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 307
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setTosToken(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 311
    :sswitch_4e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;-><init>()V

    .line 312
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 313
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setUserSettings(Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 269
    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1a
        0x1a -> :sswitch_22
        0x22 -> :sswitch_2a
        0x2a -> :sswitch_32
        0x32 -> :sswitch_3e
        0x3a -> :sswitch_46
        0x42 -> :sswitch_4e
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    move-result-object v0

    return-object v0
.end method

.method public setExperiments(Lcom/google/android/finsky/remoting/protos/Toc$Experiments;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 136
    if-nez p1, :cond_8

    .line 137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 139
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasExperiments:Z

    .line 140
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->experiments_:Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

    .line 141
    return-object p0
.end method

.method public setHomeUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasHomeUrl:Z

    .line 120
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->homeUrl_:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public setTosCheckboxTextMarketingEmails(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosCheckboxTextMarketingEmails:Z

    .line 86
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosCheckboxTextMarketingEmails_:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public setTosContent(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosContent:Z

    .line 69
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosContent_:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public setTosToken(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosToken:Z

    .line 103
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosToken_:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public setTosVersionDeprecated(I)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosVersionDeprecated:Z

    .line 52
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosVersionDeprecated_:I

    .line 53
    return-object p0
.end method

.method public setUserSettings(Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 156
    if-nez p1, :cond_8

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 159
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasUserSettings:Z

    .line 160
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->userSettings_:Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;

    .line 161
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
    .line 191
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getCorpusList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 192
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 194
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosVersionDeprecated()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 195
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosVersionDeprecated()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 197
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosContent()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 198
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 200
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasHomeUrl()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 201
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getHomeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 203
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasExperiments()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 204
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getExperiments()Lcom/google/android/finsky/remoting/protos/Toc$Experiments;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 206
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosCheckboxTextMarketingEmails()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 207
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosCheckboxTextMarketingEmails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 209
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosToken()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 210
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 212
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasUserSettings()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 213
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getUserSettings()Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 215
    :cond_7c
    return-void
.end method
