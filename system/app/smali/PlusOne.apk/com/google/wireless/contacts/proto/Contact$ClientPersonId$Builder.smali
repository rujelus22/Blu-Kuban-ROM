.class public final Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Contact.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Contact$ClientPersonIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;",
        "Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Contact$ClientPersonIdOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private type_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4975
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5089
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->GAIA:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    .line 5113
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->value_:Ljava/lang/Object;

    .line 4976
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->maybeForceBuilderInitialization()V

    .line 4977
    return-void
.end method

.method static synthetic access$6200()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    .registers 1

    .prologue
    .line 4970
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    .registers 1

    .prologue
    .line 4982
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4980
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 3

    .prologue
    .line 5003
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    .line 5004
    .local v0, result:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5005
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5007
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4970
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 6

    .prologue
    .line 5021
    new-instance v1, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;-><init>(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;Lcom/google/wireless/contacts/proto/Contact$1;)V

    .line 5022
    .local v1, result:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    .line 5023
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5024
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 5025
    or-int/lit8 v2, v2, 0x1

    .line 5027
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->type_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->access$6402(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    .line 5028
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 5029
    or-int/lit8 v2, v2, 0x2

    .line 5031
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->access$6502(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5032
    #setter for: Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->access$6602(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;I)I

    .line 5033
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4970
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->clear()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4970
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->clear()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    .registers 2

    .prologue
    .line 4986
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4987
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->GAIA:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    .line 4988
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    .line 4989
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->value_:Ljava/lang/Object;

    .line 4990
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    .line 4991
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    .registers 2

    .prologue
    .line 5106
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    .line 5107
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->GAIA:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    .line 5109
    return-object p0
.end method

.method public clearValue()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    .registers 2

    .prologue
    .line 5137
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    .line 5138
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->value_:Ljava/lang/Object;

    .line 5140
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4970
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4970
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    .registers 3

    .prologue
    .line 4995
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

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
    .line 4970
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4970
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4970
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 2

    .prologue
    .line 4999
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;
    .registers 2

    .prologue
    .line 5094
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5118
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->value_:Ljava/lang/Object;

    .line 5119
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 5120
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5121
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->value_:Ljava/lang/Object;

    .line 5124
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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5091
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasValue()Z
    .registers 3

    .prologue
    .line 5115
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

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
    .line 4970
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

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
    .line 4970
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5056
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5057
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 5062
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5064
    :sswitch_d
    return-object p0

    .line 5069
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 5070
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->valueOf(I)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    move-result-object v2

    .line 5071
    .local v2, value:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;
    if-eqz v2, :cond_0

    .line 5072
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    .line 5073
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    goto :goto_0

    .line 5078
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    .line 5079
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 5057
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 5037
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5044
    :cond_6
    :goto_6
    return-object p0

    .line 5038
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5039
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getType()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->setType(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    .line 5041
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5042
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->setValue(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;

    goto :goto_6
.end method

.method public setType(Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5097
    if-nez p1, :cond_8

    .line 5098
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5100
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    .line 5101
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    .line 5103
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5128
    if-nez p1, :cond_8

    .line 5129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5131
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->bitField0_:I

    .line 5132
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$Builder;->value_:Ljava/lang/Object;

    .line 5134
    return-object p0
.end method
