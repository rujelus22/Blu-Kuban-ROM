.class public final Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$BlockUserRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;",
        "Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$BlockUserRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private doBlock_:Z

.field private fullName_:Ljava/lang/Object;

.field private id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13012
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 13140
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 13183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->fullName_:Ljava/lang/Object;

    .line 13013
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->maybeForceBuilderInitialization()V

    .line 13014
    return-void
.end method

.method static synthetic access$17300()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    .registers 1

    .prologue
    .line 13007
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    .registers 1

    .prologue
    .line 13019
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 13017
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;
    .registers 3

    .prologue
    .line 13042
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v0

    .line 13043
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 13044
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 13046
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13007
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;
    .registers 6

    .prologue
    .line 13060
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 13061
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    .line 13062
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 13063
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 13064
    or-int/lit8 v2, v2, 0x1

    .line 13066
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    #setter for: Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->access$17502(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 13067
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 13068
    or-int/lit8 v2, v2, 0x2

    .line 13070
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->fullName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->fullName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->access$17602(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13071
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 13072
    or-int/lit8 v2, v2, 0x4

    .line 13074
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->doBlock_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->doBlock_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->access$17702(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;Z)Z

    .line 13075
    #setter for: Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->access$17802(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;I)I

    .line 13076
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13007
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13007
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    .registers 2

    .prologue
    .line 13023
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 13024
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 13025
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    .line 13026
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->fullName_:Ljava/lang/Object;

    .line 13027
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    .line 13028
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->doBlock_:Z

    .line 13029
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    .line 13030
    return-object p0
.end method

.method public clearDoBlock()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    .registers 2

    .prologue
    .line 13233
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    .line 13234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->doBlock_:Z

    .line 13236
    return-object p0
.end method

.method public clearFullName()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    .registers 2

    .prologue
    .line 13207
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    .line 13208
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->getFullName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->fullName_:Ljava/lang/Object;

    .line 13210
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    .registers 2

    .prologue
    .line 13176
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 13178
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    .line 13179
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 13007
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13007
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    .registers 3

    .prologue
    .line 13034
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

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
    .line 13007
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 13007
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13007
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;
    .registers 2

    .prologue
    .line 13038
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDoBlock()Z
    .registers 2

    .prologue
    .line 13224
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->doBlock_:Z

    return v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 13188
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->fullName_:Ljava/lang/Object;

    .line 13189
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 13190
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13191
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->fullName_:Ljava/lang/Object;

    .line 13194
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

.method public getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 2

    .prologue
    .line 13145
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    return-object v0
.end method

.method public hasDoBlock()Z
    .registers 3

    .prologue
    .line 13221
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

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

.method public hasFullName()Z
    .registers 3

    .prologue
    .line 13185
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13142
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 13007
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

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
    .line 13007
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13102
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 13103
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_44

    .line 13108
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 13110
    :sswitch_d
    return-object p0

    .line 13115
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    .line 13116
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->hasId()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 13117
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    .line 13119
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 13120
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->setId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    goto :goto_0

    .line 13124
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    .line 13125
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->fullName_:Ljava/lang/Object;

    goto :goto_0

    .line 13129
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    .line 13130
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->doBlock_:Z

    goto :goto_0

    .line 13103
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x18 -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 13080
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 13090
    :cond_6
    :goto_6
    return-object p0

    .line 13081
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 13082
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->mergeId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    .line 13084
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->hasFullName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 13085
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    .line 13087
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->hasDoBlock()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13088
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest;->getDoBlock()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->setDoBlock(Z)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;

    goto :goto_6
.end method

.method public mergeId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13164
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 13166
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->newBuilder(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 13172
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    .line 13173
    return-object p0

    .line 13169
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    goto :goto_1f
.end method

.method public setDoBlock(Z)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13227
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    .line 13228
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->doBlock_:Z

    .line 13230
    return-object p0
.end method

.method public setFullName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13198
    if-nez p1, :cond_8

    .line 13199
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13201
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    .line 13202
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->fullName_:Ljava/lang/Object;

    .line 13204
    return-object p0
.end method

.method public setId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 13158
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 13160
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    .line 13161
    return-object p0
.end method

.method public setId(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13148
    if-nez p1, :cond_8

    .line 13149
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13151
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 13153
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$BlockUserRequest$Builder;->bitField0_:I

    .line 13154
    return-object p0
.end method
