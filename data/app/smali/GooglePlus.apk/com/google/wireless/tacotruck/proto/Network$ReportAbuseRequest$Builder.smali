.class public final Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

.field private id_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 22972
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 23086
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->id_:Ljava/lang/Object;

    .line 23122
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->PLATFORM:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    .line 22973
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->maybeForceBuilderInitialization()V

    .line 22974
    return-void
.end method

.method static synthetic access$31200()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 1

    .prologue
    .line 22967
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 1

    .prologue
    .line 22979
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 22977
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22967
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;
    .registers 3

    .prologue
    .line 23000
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v0

    .line 23001
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 23002
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 23004
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22967
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;
    .registers 6

    .prologue
    .line 23018
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 23019
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 23020
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 23021
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 23022
    or-int/lit8 v2, v2, 0x1

    .line 23024
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->access$31402(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23025
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 23026
    or-int/lit8 v2, v2, 0x2

    .line 23028
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->access$31502(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    .line 23029
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->access$31602(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;I)I

    .line 23030
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22967
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22967
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 2

    .prologue
    .line 22983
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 22984
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->id_:Ljava/lang/Object;

    .line 22985
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 22986
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->PLATFORM:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    .line 22987
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 22988
    return-object p0
.end method

.method public clearContentType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 2

    .prologue
    .line 23139
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 23140
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->PLATFORM:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    .line 23142
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 2

    .prologue
    .line 23110
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 23111
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->id_:Ljava/lang/Object;

    .line 23113
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 22967
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22967
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 3

    .prologue
    .line 22992
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

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
    .line 22967
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;
    .registers 2

    .prologue
    .line 23127
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 22967
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22967
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;
    .registers 2

    .prologue
    .line 22996
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 23091
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->id_:Ljava/lang/Object;

    .line 23092
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 23093
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23094
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->id_:Ljava/lang/Object;

    .line 23097
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

.method public hasContentType()Z
    .registers 3

    .prologue
    .line 23124
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

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

    .line 23088
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 23045
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
    .line 22967
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 22967
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

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
    .line 22967
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23053
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 23054
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 23059
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 23061
    :sswitch_d
    return-object p0

    .line 23066
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 23067
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 23071
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 23072
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    move-result-object v2

    .line 23073
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;
    if-eqz v2, :cond_0

    .line 23074
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 23075
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    goto :goto_0

    .line 23054
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 23034
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 23041
    :cond_6
    :goto_6
    return-object p0

    .line 23035
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 23036
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    .line 23038
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23039
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->getContentType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->setContentType(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    goto :goto_6
.end method

.method public setContentType(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23130
    if-nez p1, :cond_8

    .line 23131
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23133
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 23134
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    .line 23136
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23101
    if-nez p1, :cond_8

    .line 23102
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23104
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->bitField0_:I

    .line 23105
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->id_:Ljava/lang/Object;

    .line 23107
    return-object p0
.end method
