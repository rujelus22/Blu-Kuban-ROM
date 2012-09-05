.class public final Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$VideoStreamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$VideoStream;",
        "Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$VideoStreamOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private formatId_:I

.field private streamUrl_:Ljava/lang/Object;

.field private videoHeight_:I

.field private videoWidth_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14924
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 15062
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->streamUrl_:Ljava/lang/Object;

    .line 14925
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->maybeForceBuilderInitialization()V

    .line 14926
    return-void
.end method

.method static synthetic access$19800()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 1

    .prologue
    .line 14919
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 1

    .prologue
    .line 14931
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 14929
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    .registers 3

    .prologue
    .line 14956
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v0

    .line 14957
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 14958
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 14960
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14919
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    .registers 6

    .prologue
    .line 14974
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;-><init>(Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 14975
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 14976
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 14977
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 14978
    or-int/lit8 v2, v2, 0x1

    .line 14980
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->streamUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->streamUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->access$20002(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14981
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 14982
    or-int/lit8 v2, v2, 0x2

    .line 14984
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoWidth_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoWidth_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->access$20102(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;I)I

    .line 14985
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 14986
    or-int/lit8 v2, v2, 0x4

    .line 14988
    :cond_28
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoHeight_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->videoHeight_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->access$20202(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;I)I

    .line 14989
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 14990
    or-int/lit8 v2, v2, 0x8

    .line 14992
    :cond_35
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->formatId_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->formatId_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->access$20302(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;I)I

    .line 14993
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->access$20402(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;I)I

    .line 14994
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14919
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14919
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 14935
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14936
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->streamUrl_:Ljava/lang/Object;

    .line 14937
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 14938
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoWidth_:I

    .line 14939
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 14940
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoHeight_:I

    .line 14941
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 14942
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->formatId_:I

    .line 14943
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 14944
    return-object p0
.end method

.method public clearFormatId()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 2

    .prologue
    .line 15154
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 15155
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->formatId_:I

    .line 15157
    return-object p0
.end method

.method public clearStreamUrl()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 2

    .prologue
    .line 15086
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 15087
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getStreamUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->streamUrl_:Ljava/lang/Object;

    .line 15089
    return-object p0
.end method

.method public clearVideoHeight()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 2

    .prologue
    .line 15133
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 15134
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoHeight_:I

    .line 15136
    return-object p0
.end method

.method public clearVideoWidth()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 2

    .prologue
    .line 15112
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 15113
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoWidth_:I

    .line 15115
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 14919
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14919
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 3

    .prologue
    .line 14948
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

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
    .line 14919
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 14919
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14919
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    .registers 2

    .prologue
    .line 14952
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v0

    return-object v0
.end method

.method public getFormatId()I
    .registers 2

    .prologue
    .line 15145
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->formatId_:I

    return v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 15067
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->streamUrl_:Ljava/lang/Object;

    .line 15068
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 15069
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15070
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->streamUrl_:Ljava/lang/Object;

    .line 15073
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

.method public getVideoHeight()I
    .registers 2

    .prologue
    .line 15124
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoHeight_:I

    return v0
.end method

.method public getVideoWidth()I
    .registers 2

    .prologue
    .line 15103
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoWidth_:I

    return v0
.end method

.method public hasFormatId()Z
    .registers 3

    .prologue
    .line 15142
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

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

.method public hasStreamUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 15064
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasVideoHeight()Z
    .registers 3

    .prologue
    .line 15121
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

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

.method public hasVideoWidth()Z
    .registers 3

    .prologue
    .line 15100
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

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
    .line 14919
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

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
    .line 14919
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15023
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 15024
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 15029
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15031
    :sswitch_d
    return-object p0

    .line 15036
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 15037
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->streamUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 15041
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 15042
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoWidth_:I

    goto :goto_0

    .line 15046
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 15047
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoHeight_:I

    goto :goto_0

    .line 15051
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 15052
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->formatId_:I

    goto :goto_0

    .line 15024
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$VideoStream;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 14998
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 15011
    :cond_6
    :goto_6
    return-object p0

    .line 14999
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->hasStreamUrl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 15000
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getStreamUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->setStreamUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    .line 15002
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->hasVideoWidth()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 15003
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getVideoWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->setVideoWidth(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    .line 15005
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->hasVideoHeight()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 15006
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getVideoHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->setVideoHeight(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    .line 15008
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->hasFormatId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15009
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getFormatId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->setFormatId(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;

    goto :goto_6
.end method

.method public setFormatId(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15148
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 15149
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->formatId_:I

    .line 15151
    return-object p0
.end method

.method public setStreamUrl(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15077
    if-nez p1, :cond_8

    .line 15078
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15080
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 15081
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->streamUrl_:Ljava/lang/Object;

    .line 15083
    return-object p0
.end method

.method public setVideoHeight(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15127
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 15128
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoHeight_:I

    .line 15130
    return-object p0
.end method

.method public setVideoWidth(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15106
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->bitField0_:I

    .line 15107
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$Builder;->videoWidth_:I

    .line 15109
    return-object p0
.end method
