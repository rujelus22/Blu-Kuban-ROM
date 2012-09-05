.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOptionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 31983
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 32097
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 32140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->label_:Ljava/lang/Object;

    .line 31984
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->maybeForceBuilderInitialization()V

    .line 31985
    return-void
.end method

.method static synthetic access$43400()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 1

    .prologue
    .line 31978
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 1

    .prologue
    .line 31990
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 31988
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    .registers 3

    .prologue
    .line 32011
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v0

    .line 32012
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 32013
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 32015
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31978
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    .registers 6

    .prologue
    .line 32029
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 32030
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 32031
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 32032
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 32033
    or-int/lit8 v2, v2, 0x1

    .line 32035
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->access$43602(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 32036
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 32037
    or-int/lit8 v2, v2, 0x2

    .line 32039
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->access$43702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32040
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->access$43802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;I)I

    .line 32041
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 31978
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31978
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 2

    .prologue
    .line 31994
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 31995
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 31996
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 31997
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->label_:Ljava/lang/Object;

    .line 31998
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 31999
    return-object p0
.end method

.method public clearLabel()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 2

    .prologue
    .line 32164
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 32165
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->label_:Ljava/lang/Object;

    .line 32167
    return-object p0
.end method

.method public clearValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 2

    .prologue
    .line 32133
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 32135
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 32136
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 31978
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 31978
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 3

    .prologue
    .line 32003
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

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
    .line 31978
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 31978
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31978
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    .registers 2

    .prologue
    .line 32007
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 32145
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->label_:Ljava/lang/Object;

    .line 32146
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 32147
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 32148
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->label_:Ljava/lang/Object;

    .line 32151
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

.method public getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 2

    .prologue
    .line 32102
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    return-object v0
.end method

.method public hasLabel()Z
    .registers 3

    .prologue
    .line 32142
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

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

.method public hasValue()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32099
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

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
    .line 31978
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

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
    .line 31978
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32064
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 32065
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_38

    .line 32070
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 32072
    :sswitch_d
    return-object p0

    .line 32077
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    .line 32078
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 32079
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    .line 32081
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 32082
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->setValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    goto :goto_0

    .line 32086
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 32087
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 32065
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 32045
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 32052
    :cond_6
    :goto_6
    return-object p0

    .line 32046
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 32047
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->mergeValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    .line 32049
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32050
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->setLabel(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    goto :goto_6
.end method

.method public mergeValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 32121
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 32123
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 32129
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 32130
    return-object p0

    .line 32126
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    goto :goto_1f
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32155
    if-nez p1, :cond_8

    .line 32156
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32158
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 32159
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->label_:Ljava/lang/Object;

    .line 32161
    return-object p0
.end method

.method public setValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 32115
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 32117
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 32118
    return-object p0
.end method

.method public setValue(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32105
    if-nez p1, :cond_8

    .line 32106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32108
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 32110
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->bitField0_:I

    .line 32111
    return-object p0
.end method
