.class public final Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PhotoActionDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoActionDataOrBuilder;"
    }
.end annotation


# instance fields
.field private albumId_:Ljava/lang/Object;

.field private bitField0_:I

.field private personId_:Ljava/lang/Object;

.field private photoId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25078
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 25202
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->personId_:Ljava/lang/Object;

    .line 25238
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->albumId_:Ljava/lang/Object;

    .line 25274
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->photoId_:Ljava/lang/Object;

    .line 25079
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->maybeForceBuilderInitialization()V

    .line 25080
    return-void
.end method

.method static synthetic access$33900()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 1

    .prologue
    .line 25073
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 1

    .prologue
    .line 25085
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 25083
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    .registers 3

    .prologue
    .line 25108
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    .line 25109
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 25110
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 25112
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25073
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    .registers 6

    .prologue
    .line 25126
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 25127
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 25128
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 25129
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 25130
    or-int/lit8 v2, v2, 0x1

    .line 25132
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->personId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->personId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->access$34102(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25133
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 25134
    or-int/lit8 v2, v2, 0x2

    .line 25136
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->albumId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->albumId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->access$34202(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25137
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 25138
    or-int/lit8 v2, v2, 0x4

    .line 25140
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->photoId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->photoId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->access$34302(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25141
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->access$34402(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;I)I

    .line 25142
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25073
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25073
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 2

    .prologue
    .line 25089
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 25090
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->personId_:Ljava/lang/Object;

    .line 25091
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 25092
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->albumId_:Ljava/lang/Object;

    .line 25093
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 25094
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->photoId_:Ljava/lang/Object;

    .line 25095
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 25096
    return-object p0
.end method

.method public clearAlbumId()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 2

    .prologue
    .line 25262
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 25263
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->albumId_:Ljava/lang/Object;

    .line 25265
    return-object p0
.end method

.method public clearPersonId()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 2

    .prologue
    .line 25226
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 25227
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPersonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->personId_:Ljava/lang/Object;

    .line 25229
    return-object p0
.end method

.method public clearPhotoId()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 2

    .prologue
    .line 25298
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 25299
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPhotoId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->photoId_:Ljava/lang/Object;

    .line 25301
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 25073
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25073
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 3

    .prologue
    .line 25100
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

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
    .line 25073
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25243
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->albumId_:Ljava/lang/Object;

    .line 25244
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 25245
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25246
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->albumId_:Ljava/lang/Object;

    .line 25249
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 25073
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25073
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    .registers 2

    .prologue
    .line 25104
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    return-object v0
.end method

.method public getPersonId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25207
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->personId_:Ljava/lang/Object;

    .line 25208
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 25209
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25210
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->personId_:Ljava/lang/Object;

    .line 25213
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

.method public getPhotoId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25279
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->photoId_:Ljava/lang/Object;

    .line 25280
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 25281
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25282
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->photoId_:Ljava/lang/Object;

    .line 25285
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

.method public hasAlbumId()Z
    .registers 3

    .prologue
    .line 25240
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

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

.method public hasPersonId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 25204
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhotoId()Z
    .registers 3

    .prologue
    .line 25276
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

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
    .line 25073
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

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
    .line 25073
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25168
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 25169
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 25174
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25176
    :sswitch_d
    return-object p0

    .line 25181
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 25182
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->personId_:Ljava/lang/Object;

    goto :goto_0

    .line 25186
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 25187
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->albumId_:Ljava/lang/Object;

    goto :goto_0

    .line 25191
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 25192
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->photoId_:Ljava/lang/Object;

    goto :goto_0

    .line 25169
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 25146
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 25156
    :cond_6
    :goto_6
    return-object p0

    .line 25147
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 25148
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPersonId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->setPersonId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    .line 25150
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 25151
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->setAlbumId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    .line 25153
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->hasPhotoId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25154
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPhotoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->setPhotoId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    goto :goto_6
.end method

.method public setAlbumId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25253
    if-nez p1, :cond_8

    .line 25254
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25256
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 25257
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->albumId_:Ljava/lang/Object;

    .line 25259
    return-object p0
.end method

.method public setPersonId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25217
    if-nez p1, :cond_8

    .line 25218
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25220
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 25221
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->personId_:Ljava/lang/Object;

    .line 25223
    return-object p0
.end method

.method public setPhotoId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25289
    if-nez p1, :cond_8

    .line 25290
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25292
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->bitField0_:I

    .line 25293
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->photoId_:Ljava/lang/Object;

    .line 25295
    return-object p0
.end method
