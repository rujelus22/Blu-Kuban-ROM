.class public final Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "QsbLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/QsbLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuggestionClickEntry"
.end annotation


# instance fields
.field private cachedSize:I

.field private clickLocation_:I

.field private clickPosition_:J

.field private clickType_:I

.field private hasClickLocation:Z

.field private hasClickPosition:Z

.field private hasClickType:Z

.field private hasNumChars:Z

.field private numChars_:I

.field private resultSource_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private suggestion_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->clickPosition_:J

    .line 193
    iput v2, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->clickType_:I

    .line 210
    iput v2, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->clickLocation_:I

    .line 227
    iput v2, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->numChars_:I

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->resultSource_:Ljava/util/List;

    .line 276
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->suggestion_:Ljava/util/List;

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->cachedSize:I

    .line 160
    return-void
.end method


# virtual methods
.method public addResultSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;
    .registers 3
    .parameter "value"

    .prologue
    .line 260
    if-nez p1, :cond_8

    .line 261
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 263
    :cond_8
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->resultSource_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->resultSource_:Ljava/util/List;

    .line 266
    :cond_17
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->resultSource_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    return-object p0
.end method

.method public addSuggestion(Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;)Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;
    .registers 3
    .parameter "value"

    .prologue
    .line 293
    if-nez p1, :cond_8

    .line 294
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 296
    :cond_8
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->suggestion_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->suggestion_:Ljava/util/List;

    .line 299
    :cond_17
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 350
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->cachedSize:I

    if-gez v0, :cond_7

    .line 352
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->getSerializedSize()I

    .line 354
    :cond_7
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->cachedSize:I

    return v0
.end method

.method public getClickLocation()I
    .registers 2

    .prologue
    .line 212
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->clickLocation_:I

    return v0
.end method

.method public getClickPosition()J
    .registers 3

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->clickPosition_:J

    return-wide v0
.end method

.method public getClickType()I
    .registers 2

    .prologue
    .line 195
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->clickType_:I

    return v0
.end method

.method public getNumChars()I
    .registers 2

    .prologue
    .line 228
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->numChars_:I

    return v0
.end method

.method public getResultSourceList()Ljava/util/List;
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
    .line 246
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->resultSource_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 358
    const/4 v3, 0x0

    .line 359
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->hasClickPosition()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 360
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->getClickPosition()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 363
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->hasClickType()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 364
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->getClickType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 367
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->hasClickLocation()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 368
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->getClickLocation()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 371
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->hasNumChars()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 372
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->getNumChars()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 376
    :cond_41
    const/4 v0, 0x0

    .line 377
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->getResultSourceList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 378
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_4a

    .line 381
    .end local v1           #element:Ljava/lang/String;
    :cond_5c
    add-int/2addr v3, v0

    .line 382
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->getResultSourceList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 384
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->getSuggestionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;

    .line 385
    .local v1, element:Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;
    const/4 v4, 0x6

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_70

    .line 388
    .end local v1           #element:Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;
    :cond_83
    iput v3, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->cachedSize:I

    .line 389
    return v3
.end method

.method public getSuggestionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->suggestion_:Ljava/util/List;

    return-object v0
.end method

.method public hasClickLocation()Z
    .registers 2

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->hasClickLocation:Z

    return v0
.end method

.method public hasClickPosition()Z
    .registers 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->hasClickPosition:Z

    return v0
.end method

.method public hasClickType()Z
    .registers 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->hasClickType:Z

    return v0
.end method

.method public hasNumChars()Z
    .registers 2

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->hasNumChars:Z

    return v0
.end method

.method public setClickPosition(J)Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;
    .registers 4
    .parameter "value"

    .prologue
    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->hasClickPosition:Z

    .line 181
    iput-wide p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->clickPosition_:J

    .line 182
    return-object p0
.end method

.method public setClickType(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;
    .registers 3
    .parameter "value"

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->hasClickType:Z

    .line 198
    iput p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->clickType_:I

    .line 199
    return-object p0
.end method

.method public setNumChars(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;
    .registers 3
    .parameter "value"

    .prologue
    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->hasNumChars:Z

    .line 232
    iput p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->numChars_:I

    .line 233
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
    .line 328
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->hasClickPosition()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 329
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->getClickPosition()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 331
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->hasClickType()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 332
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->getClickType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 334
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->hasClickLocation()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 335
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->getClickLocation()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 337
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->hasNumChars()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 338
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->getNumChars()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 340
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->getResultSourceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 341
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_40

    .line 343
    .end local v0           #element:Ljava/lang/String;
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->getSuggestionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;

    .line 344
    .local v0, element:Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_59

    .line 346
    .end local v0           #element:Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;
    :cond_6a
    return-void
.end method
