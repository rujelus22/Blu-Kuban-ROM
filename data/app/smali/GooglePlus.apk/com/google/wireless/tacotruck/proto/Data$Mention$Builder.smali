.class public final Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$MentionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Mention;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
        "Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$MentionOrBuilder;"
    }
.end annotation


# instance fields
.field private aggregateId_:Ljava/lang/Object;

.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private index_:I

.field private length_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 6006
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6186
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->aggregateId_:Ljava/lang/Object;

    .line 6222
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->displayName_:Ljava/lang/Object;

    .line 6007
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->maybeForceBuilderInitialization()V

    .line 6008
    return-void
.end method

.method static synthetic access$7300()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 1

    .prologue
    .line 6001
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 1

    .prologue
    .line 6013
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 6011
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6001
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$Mention;
    .registers 3

    .prologue
    .line 6038
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v0

    .line 6039
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Mention;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 6040
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6042
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6001
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Mention;
    .registers 6

    .prologue
    .line 6056
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Mention;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Mention;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 6057
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Mention;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    .line 6058
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6059
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 6060
    or-int/lit8 v2, v2, 0x1

    .line 6062
    :cond_10
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->index_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Mention;->index_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->access$7502(Lcom/google/wireless/tacotruck/proto/Data$Mention;I)I

    .line 6063
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 6064
    or-int/lit8 v2, v2, 0x2

    .line 6066
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->length_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Mention;->length_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->access$7602(Lcom/google/wireless/tacotruck/proto/Data$Mention;I)I

    .line 6067
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 6068
    or-int/lit8 v2, v2, 0x4

    .line 6070
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->aggregateId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Mention;->aggregateId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->access$7702(Lcom/google/wireless/tacotruck/proto/Data$Mention;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6071
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 6072
    or-int/lit8 v2, v2, 0x8

    .line 6074
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Mention;->displayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->access$7802(Lcom/google/wireless/tacotruck/proto/Data$Mention;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6075
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Mention;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->access$7902(Lcom/google/wireless/tacotruck/proto/Data$Mention;I)I

    .line 6076
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6001
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6001
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 6017
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6018
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->index_:I

    .line 6019
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    .line 6020
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->length_:I

    .line 6021
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    .line 6022
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->aggregateId_:Ljava/lang/Object;

    .line 6023
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    .line 6024
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->displayName_:Ljava/lang/Object;

    .line 6025
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    .line 6026
    return-object p0
.end method

.method public clearAggregateId()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 2

    .prologue
    .line 6210
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    .line 6211
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getAggregateId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->aggregateId_:Ljava/lang/Object;

    .line 6213
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 2

    .prologue
    .line 6246
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    .line 6247
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->displayName_:Ljava/lang/Object;

    .line 6249
    return-object p0
.end method

.method public clearIndex()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 2

    .prologue
    .line 6158
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    .line 6159
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->index_:I

    .line 6161
    return-object p0
.end method

.method public clearLength()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 2

    .prologue
    .line 6179
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    .line 6180
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->length_:I

    .line 6182
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 6001
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6001
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 3

    .prologue
    .line 6030
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

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
    .line 6001
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAggregateId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6191
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->aggregateId_:Ljava/lang/Object;

    .line 6192
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 6193
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6194
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->aggregateId_:Ljava/lang/Object;

    .line 6197
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
    .line 6001
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6001
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Mention;
    .registers 2

    .prologue
    .line 6034
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6227
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->displayName_:Ljava/lang/Object;

    .line 6228
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 6229
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6230
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->displayName_:Ljava/lang/Object;

    .line 6233
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

.method public getIndex()I
    .registers 2

    .prologue
    .line 6149
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->index_:I

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 6170
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->length_:I

    return v0
.end method

.method public hasAggregateId()Z
    .registers 3

    .prologue
    .line 6188
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

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

.method public hasDisplayName()Z
    .registers 3

    .prologue
    .line 6224
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasIndex()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6146
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLength()Z
    .registers 3

    .prologue
    .line 6167
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

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
    .line 6097
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
    .line 6001
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 6001
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$Mention;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

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
    .line 6001
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 6106
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 6111
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6113
    :sswitch_d
    return-object p0

    .line 6118
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    .line 6119
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->index_:I

    goto :goto_0

    .line 6123
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    .line 6124
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->length_:I

    goto :goto_0

    .line 6128
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    .line 6129
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->aggregateId_:Ljava/lang/Object;

    goto :goto_0

    .line 6133
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    .line 6134
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->displayName_:Ljava/lang/Object;

    goto :goto_0

    .line 6106
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Mention;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 6080
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 6093
    :cond_6
    :goto_6
    return-object p0

    .line 6081
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6082
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setIndex(I)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 6084
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->hasLength()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6085
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setLength(I)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 6087
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->hasAggregateId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 6088
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getAggregateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setAggregateId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 6090
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6091
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    goto :goto_6
.end method

.method public setAggregateId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6201
    if-nez p1, :cond_8

    .line 6202
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6204
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    .line 6205
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->aggregateId_:Ljava/lang/Object;

    .line 6207
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6237
    if-nez p1, :cond_8

    .line 6238
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6240
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    .line 6241
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->displayName_:Ljava/lang/Object;

    .line 6243
    return-object p0
.end method

.method public setIndex(I)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6152
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    .line 6153
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->index_:I

    .line 6155
    return-object p0
.end method

.method public setLength(I)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6173
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->bitField0_:I

    .line 6174
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->length_:I

    .line 6176
    return-object p0
.end method
