.class public final Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PeopleResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;",
        "Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PeopleResultOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dominant_:Z

.field private person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

.field private snippetHtml_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 42208
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 42336
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 42379
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->snippetHtml_:Ljava/lang/Object;

    .line 42209
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->maybeForceBuilderInitialization()V

    .line 42210
    return-void
.end method

.method static synthetic access$56700()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    .registers 1

    .prologue
    .line 42203
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    .registers 1

    .prologue
    .line 42215
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 42213
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42203
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;
    .registers 3

    .prologue
    .line 42238
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v0

    .line 42239
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 42240
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 42242
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42203
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;
    .registers 6

    .prologue
    .line 42256
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 42257
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    .line 42258
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 42259
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 42260
    or-int/lit8 v2, v2, 0x1

    .line 42262
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->person_:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->access$56902(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 42263
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 42264
    or-int/lit8 v2, v2, 0x2

    .line 42266
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->snippetHtml_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->snippetHtml_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->access$57002(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42267
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 42268
    or-int/lit8 v2, v2, 0x4

    .line 42270
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->dominant_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->dominant_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->access$57102(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;Z)Z

    .line 42271
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->access$57202(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;I)I

    .line 42272
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 42203
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42203
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    .registers 2

    .prologue
    .line 42219
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 42220
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 42221
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    .line 42222
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->snippetHtml_:Ljava/lang/Object;

    .line 42223
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    .line 42224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->dominant_:Z

    .line 42225
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    .line 42226
    return-object p0
.end method

.method public clearDominant()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    .registers 2

    .prologue
    .line 42429
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    .line 42430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->dominant_:Z

    .line 42432
    return-object p0
.end method

.method public clearPerson()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    .registers 2

    .prologue
    .line 42372
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 42374
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    .line 42375
    return-object p0
.end method

.method public clearSnippetHtml()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    .registers 2

    .prologue
    .line 42403
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    .line 42404
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->getSnippetHtml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->snippetHtml_:Ljava/lang/Object;

    .line 42406
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 42203
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 42203
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    .registers 3

    .prologue
    .line 42230
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42203
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 42203
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42203
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;
    .registers 2

    .prologue
    .line 42234
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v0

    return-object v0
.end method

.method public getDominant()Z
    .registers 2

    .prologue
    .line 42420
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->dominant_:Z

    return v0
.end method

.method public getPerson()Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 2

    .prologue
    .line 42341
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    return-object v0
.end method

.method public getSnippetHtml()Ljava/lang/String;
    .registers 4

    .prologue
    .line 42384
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->snippetHtml_:Ljava/lang/Object;

    .line 42385
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 42386
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 42387
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->snippetHtml_:Ljava/lang/Object;

    .line 42390
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public hasDominant()Z
    .registers 3

    .prologue
    .line 42417
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasPerson()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 42338
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSnippetHtml()Z
    .registers 3

    .prologue
    .line 42381
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 42290
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42203
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 42203
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42203
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42298
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 42299
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_44

    .line 42304
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42306
    :sswitch_d
    return-object p0

    .line 42311
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    .line 42312
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->hasPerson()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 42313
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->getPerson()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 42315
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 42316
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->setPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    goto :goto_0

    .line 42320
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    .line 42321
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->snippetHtml_:Ljava/lang/Object;

    goto :goto_0

    .line 42325
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    .line 42326
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->dominant_:Z

    goto :goto_0

    .line 42299
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x18 -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 42276
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 42286
    :cond_6
    :goto_6
    return-object p0

    .line 42277
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->hasPerson()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 42278
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->getPerson()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->mergePerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    .line 42280
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->hasSnippetHtml()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 42281
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->getSnippetHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->setSnippetHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    .line 42283
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->hasDominant()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42284
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->getDominant()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->setDominant(Z)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;

    goto :goto_6
.end method

.method public mergePerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 42360
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 42362
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 42368
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    .line 42369
    return-object p0

    .line 42365
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    goto :goto_1f
.end method

.method public setDominant(Z)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42423
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    .line 42424
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->dominant_:Z

    .line 42426
    return-object p0
.end method

.method public setPerson(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 42354
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 42356
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    .line 42357
    return-object p0
.end method

.method public setPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42344
    if-nez p1, :cond_8

    .line 42345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42347
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->person_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 42349
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    .line 42350
    return-object p0
.end method

.method public setSnippetHtml(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42394
    if-nez p1, :cond_8

    .line 42395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42397
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->bitField0_:I

    .line 42398
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult$Builder;->snippetHtml_:Ljava/lang/Object;

    .line 42400
    return-object p0
.end method
