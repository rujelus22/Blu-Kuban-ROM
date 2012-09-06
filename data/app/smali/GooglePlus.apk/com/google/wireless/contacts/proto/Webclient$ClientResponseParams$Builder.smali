.class public final Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Webclient.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;",
        "Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParamsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private responseSource_:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2023
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2123
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->UNKNOWN:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->responseSource_:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    .line 2024
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->maybeForceBuilderInitialization()V

    .line 2025
    return-void
.end method

.method static synthetic access$3000()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;
    .registers 1

    .prologue
    .line 2018
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->create()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;
    .registers 1

    .prologue
    .line 2030
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2028
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2018
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->build()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;
    .registers 3

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;

    move-result-object v0

    .line 2050
    .local v0, result:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2051
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2053
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2018
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;
    .registers 6

    .prologue
    .line 2067
    new-instance v1, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;-><init>(Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;Lcom/google/wireless/contacts/proto/Webclient$1;)V

    .line 2068
    .local v1, result:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->bitField0_:I

    .line 2069
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2070
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2071
    or-int/lit8 v2, v2, 0x1

    .line 2073
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->responseSource_:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    #setter for: Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->responseSource_:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->access$3202(Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;)Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    .line 2074
    #setter for: Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->access$3302(Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;I)I

    .line 2075
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2018
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->clear()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2018
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->clear()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;
    .registers 2

    .prologue
    .line 2034
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2035
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->UNKNOWN:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->responseSource_:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    .line 2036
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->bitField0_:I

    .line 2037
    return-object p0
.end method

.method public clearResponseSource()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;
    .registers 2

    .prologue
    .line 2140
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->bitField0_:I

    .line 2141
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->UNKNOWN:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->responseSource_:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    .line 2143
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2018
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2018
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;
    .registers 3

    .prologue
    .line 2041
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->create()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;)Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

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
    .line 2018
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2018
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2018
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;
    .registers 2

    .prologue
    .line 2045
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;

    move-result-object v0

    return-object v0
.end method

.method public getResponseSource()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;
    .registers 2

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->responseSource_:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    return-object v0
.end method

.method public hasResponseSource()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2125
    iget v1, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->bitField0_:I

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
    .line 2087
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
    .line 2018
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2018
    check-cast p1, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;)Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

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
    .line 2018
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2095
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2096
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_22

    .line 2101
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2103
    :sswitch_d
    return-object p0

    .line 2108
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2109
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->valueOf(I)Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    move-result-object v2

    .line 2110
    .local v2, value:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;
    if-eqz v2, :cond_0

    .line 2111
    iget v3, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->bitField0_:I

    .line 2112
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->responseSource_:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    goto :goto_0

    .line 2096
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;)Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 2079
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2083
    :cond_6
    :goto_6
    return-object p0

    .line 2080
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->hasResponseSource()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2081
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->getResponseSource()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->setResponseSource(Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;)Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

    goto :goto_6
.end method

.method public setResponseSource(Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;)Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2131
    if-nez p1, :cond_8

    .line 2132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2134
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->bitField0_:I

    .line 2135
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->responseSource_:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    .line 2137
    return-object p0
.end method
