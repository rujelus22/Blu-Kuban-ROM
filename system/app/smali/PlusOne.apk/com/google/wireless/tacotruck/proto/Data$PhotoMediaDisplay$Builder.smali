.class public final Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplayOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplayOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private data_:Ljava/lang/Object;

.field private format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

.field private isPwa_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 8024
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8152
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->LINKED_THUMBS:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    .line 8176
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->data_:Ljava/lang/Object;

    .line 8025
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->maybeForceBuilderInitialization()V

    .line 8026
    return-void
.end method

.method static synthetic access$10100()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 1

    .prologue
    .line 8019
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 1

    .prologue
    .line 8031
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 8029
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
    .registers 3

    .prologue
    .line 8054
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    .line 8055
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 8056
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8058
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8019
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
    .registers 6

    .prologue
    .line 8072
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 8073
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    .line 8074
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8075
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 8076
    or-int/lit8 v2, v2, 0x1

    .line 8078
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->access$10302(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    .line 8079
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 8080
    or-int/lit8 v2, v2, 0x2

    .line 8082
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->data_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->data_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->access$10402(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8083
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 8084
    or-int/lit8 v2, v2, 0x4

    .line 8086
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->isPwa_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->isPwa_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->access$10502(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;Z)Z

    .line 8087
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->access$10602(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;I)I

    .line 8088
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8019
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8019
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 2

    .prologue
    .line 8035
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 8036
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->LINKED_THUMBS:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    .line 8037
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    .line 8038
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->data_:Ljava/lang/Object;

    .line 8039
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    .line 8040
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->isPwa_:Z

    .line 8041
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    .line 8042
    return-object p0
.end method

.method public clearData()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 2

    .prologue
    .line 8200
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    .line 8201
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->data_:Ljava/lang/Object;

    .line 8203
    return-object p0
.end method

.method public clearFormat()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 2

    .prologue
    .line 8169
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    .line 8170
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->LINKED_THUMBS:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    .line 8172
    return-object p0
.end method

.method public clearIsPwa()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 2

    .prologue
    .line 8226
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    .line 8227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->isPwa_:Z

    .line 8229
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 8019
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8019
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 3

    .prologue
    .line 8046
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

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
    .line 8019
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8181
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->data_:Ljava/lang/Object;

    .line 8182
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8183
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8184
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->data_:Ljava/lang/Object;

    .line 8187
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
    .line 8019
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8019
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
    .registers 2

    .prologue
    .line 8050
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;
    .registers 2

    .prologue
    .line 8157
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    return-object v0
.end method

.method public getIsPwa()Z
    .registers 2

    .prologue
    .line 8217
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->isPwa_:Z

    return v0
.end method

.method public hasData()Z
    .registers 3

    .prologue
    .line 8178
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

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

.method public hasFormat()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8154
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasIsPwa()Z
    .registers 3

    .prologue
    .line 8214
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

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
    .line 8019
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

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
    .line 8019
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8114
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 8115
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3c

    .line 8120
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8122
    :sswitch_d
    return-object p0

    .line 8127
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 8128
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    move-result-object v2

    .line 8129
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;
    if-eqz v2, :cond_0

    .line 8130
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    .line 8131
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    goto :goto_0

    .line 8136
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    .line 8137
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->data_:Ljava/lang/Object;

    goto :goto_0

    .line 8141
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    .line 8142
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->isPwa_:Z

    goto :goto_0

    .line 8115
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 8092
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 8102
    :cond_6
    :goto_6
    return-object p0

    .line 8093
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->hasFormat()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8094
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getFormat()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->setFormat(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    .line 8096
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->hasData()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 8097
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->setData(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    .line 8099
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->hasIsPwa()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8100
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getIsPwa()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->setIsPwa(Z)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    goto :goto_6
.end method

.method public setData(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8191
    if-nez p1, :cond_8

    .line 8192
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8194
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    .line 8195
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->data_:Ljava/lang/Object;

    .line 8197
    return-object p0
.end method

.method public setFormat(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8160
    if-nez p1, :cond_8

    .line 8161
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8163
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    .line 8164
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    .line 8166
    return-object p0
.end method

.method public setIsPwa(Z)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8220
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->bitField0_:I

    .line 8221
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->isPwa_:Z

    .line 8223
    return-object p0
.end method
