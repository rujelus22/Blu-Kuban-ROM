.class public final Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;",
        "Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2888
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2984
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->url_:Ljava/lang/Object;

    .line 2889
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->maybeForceBuilderInitialization()V

    .line 2890
    return-void
.end method

.method static synthetic access$3600()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;
    .registers 1

    .prologue
    .line 2883
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;
    .registers 1

    .prologue
    .line 2895
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2893
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;
    .registers 3

    .prologue
    .line 2914
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v0

    .line 2915
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2916
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2918
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2883
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;
    .registers 6

    .prologue
    .line 2932
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;-><init>(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V

    .line 2933
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->bitField0_:I

    .line 2934
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2935
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2936
    or-int/lit8 v2, v2, 0x1

    .line 2938
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->access$3802(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2939
    #setter for: Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->access$3902(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;I)I

    .line 2940
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2883
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2883
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;
    .registers 2

    .prologue
    .line 2899
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2900
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->url_:Ljava/lang/Object;

    .line 2901
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->bitField0_:I

    .line 2902
    return-object p0
.end method

.method public clearUrl()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;
    .registers 2

    .prologue
    .line 3008
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->bitField0_:I

    .line 3009
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->url_:Ljava/lang/Object;

    .line 3011
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2883
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2883
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;
    .registers 3

    .prologue
    .line 2906
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

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
    .line 2883
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2883
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2883
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;
    .registers 2

    .prologue
    .line 2910
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2989
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->url_:Ljava/lang/Object;

    .line 2990
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2991
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2992
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->url_:Ljava/lang/Object;

    .line 2995
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

.method public hasUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2986
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->bitField0_:I

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
    .line 2883
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

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
    .line 2883
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2960
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2961
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 2966
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2968
    :sswitch_d
    return-object p0

    .line 2973
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->bitField0_:I

    .line 2974
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 2961
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 2944
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2948
    :cond_6
    :goto_6
    return-object p0

    .line 2945
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2946
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->setUrl(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    goto :goto_6
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2999
    if-nez p1, :cond_8

    .line 3000
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3002
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->bitField0_:I

    .line 3003
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->url_:Ljava/lang/Object;

    .line 3005
    return-object p0
.end method
