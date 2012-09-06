.class public final Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$KeyValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Data$KeyValue;",
        "Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Data$KeyValueOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 5034
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->key_:Ljava/lang/Object;

    .line 5180
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->value_:Ljava/lang/Object;

    .line 5035
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->maybeForceBuilderInitialization()V

    .line 5036
    return-void
.end method

.method static synthetic access$6700()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;
    .registers 1

    .prologue
    .line 5029
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;
    .registers 1

    .prologue
    .line 5041
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 5039
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5029
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
    .registers 3

    .prologue
    .line 5062
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v0

    .line 5063
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5064
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5066
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5029
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
    .registers 6

    .prologue
    .line 5080
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;-><init>(Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V

    .line 5081
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

    .line 5082
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5083
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 5084
    or-int/lit8 v2, v2, 0x1

    .line 5086
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->key_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->key_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->access$6902(Lcom/google/wireless/realtimechat/proto/Data$KeyValue;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5087
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 5088
    or-int/lit8 v2, v2, 0x2

    .line 5090
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->access$7002(Lcom/google/wireless/realtimechat/proto/Data$KeyValue;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5091
    #setter for: Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->access$7102(Lcom/google/wireless/realtimechat/proto/Data$KeyValue;I)I

    .line 5092
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5029
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5029
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;
    .registers 2

    .prologue
    .line 5045
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5046
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->key_:Ljava/lang/Object;

    .line 5047
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

    .line 5048
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->value_:Ljava/lang/Object;

    .line 5049
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

    .line 5050
    return-object p0
.end method

.method public clearKey()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;
    .registers 2

    .prologue
    .line 5168
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

    .line 5169
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->key_:Ljava/lang/Object;

    .line 5171
    return-object p0
.end method

.method public clearValue()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;
    .registers 2

    .prologue
    .line 5204
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

    .line 5205
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->value_:Ljava/lang/Object;

    .line 5207
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 5029
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5029
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;
    .registers 3

    .prologue
    .line 5054
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$KeyValue;)Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

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
    .line 5029
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 5029
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5029
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
    .registers 2

    .prologue
    .line 5058
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5149
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->key_:Ljava/lang/Object;

    .line 5150
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 5151
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5152
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->key_:Ljava/lang/Object;

    .line 5155
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

.method public getValue()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5185
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->value_:Ljava/lang/Object;

    .line 5186
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 5187
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5188
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->value_:Ljava/lang/Object;

    .line 5191
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

.method public hasKey()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5146
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

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
    .line 5182
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

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
    .line 5107
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
    .line 5029
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 5029
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$KeyValue;)Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

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
    .line 5029
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5115
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 5116
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 5121
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5123
    :sswitch_d
    return-object p0

    .line 5128
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

    .line 5129
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->key_:Ljava/lang/Object;

    goto :goto_0

    .line 5133
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

    .line 5134
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 5116
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$KeyValue;)Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 5096
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5103
    :cond_6
    :goto_6
    return-object p0

    .line 5097
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5098
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->setKey(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    .line 5100
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5101
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->setValue(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    goto :goto_6
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5159
    if-nez p1, :cond_8

    .line 5160
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5162
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

    .line 5163
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->key_:Ljava/lang/Object;

    .line 5165
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5195
    if-nez p1, :cond_8

    .line 5196
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5198
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->bitField0_:I

    .line 5199
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->value_:Ljava/lang/Object;

    .line 5201
    return-object p0
.end method
