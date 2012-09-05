.class public final Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;",
        "Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private listType_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14085
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14199
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->id_:Ljava/lang/Object;

    .line 14235
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->MEMBERS:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->listType_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    .line 14086
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->maybeForceBuilderInitialization()V

    .line 14087
    return-void
.end method

.method static synthetic access$18800()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;
    .registers 1

    .prologue
    .line 14080
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;
    .registers 1

    .prologue
    .line 14092
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 14090
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;
    .registers 3

    .prologue
    .line 14113
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v0

    .line 14114
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 14115
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 14117
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14080
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;
    .registers 6

    .prologue
    .line 14131
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 14132
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    .line 14133
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 14134
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 14135
    or-int/lit8 v2, v2, 0x1

    .line 14137
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->access$19002(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14138
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 14139
    or-int/lit8 v2, v2, 0x2

    .line 14141
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->listType_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->listType_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->access$19102(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    .line 14142
    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->access$19202(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;I)I

    .line 14143
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14080
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14080
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;
    .registers 2

    .prologue
    .line 14096
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14097
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->id_:Ljava/lang/Object;

    .line 14098
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    .line 14099
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->MEMBERS:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->listType_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    .line 14100
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    .line 14101
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;
    .registers 2

    .prologue
    .line 14223
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    .line 14224
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->id_:Ljava/lang/Object;

    .line 14226
    return-object p0
.end method

.method public clearListType()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;
    .registers 2

    .prologue
    .line 14252
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    .line 14253
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->MEMBERS:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->listType_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    .line 14255
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 14080
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14080
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;
    .registers 3

    .prologue
    .line 14105
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

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
    .line 14080
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 14080
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14080
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;
    .registers 2

    .prologue
    .line 14109
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14204
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->id_:Ljava/lang/Object;

    .line 14205
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 14206
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14207
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->id_:Ljava/lang/Object;

    .line 14210
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

.method public getListType()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;
    .registers 2

    .prologue
    .line 14240
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->listType_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    return-object v0
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 14201
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasListType()Z
    .registers 3

    .prologue
    .line 14237
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

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
    .line 14080
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

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
    .line 14080
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14166
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 14167
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 14172
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 14174
    :sswitch_d
    return-object p0

    .line 14179
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    .line 14180
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 14184
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 14185
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->valueOf(I)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    move-result-object v2

    .line 14186
    .local v2, value:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;
    if-eqz v2, :cond_0

    .line 14187
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    .line 14188
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->listType_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    goto :goto_0

    .line 14167
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 14147
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 14154
    :cond_6
    :goto_6
    return-object p0

    .line 14148
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 14149
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    .line 14151
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->hasListType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14152
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;->getListType()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->setListType(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;

    goto :goto_6
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14214
    if-nez p1, :cond_8

    .line 14215
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14217
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    .line 14218
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->id_:Ljava/lang/Object;

    .line 14220
    return-object p0
.end method

.method public setListType(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14243
    if-nez p1, :cond_8

    .line 14244
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14246
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->bitField0_:I

    .line 14247
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$Builder;->listType_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    .line 14249
    return-object p0
.end method
