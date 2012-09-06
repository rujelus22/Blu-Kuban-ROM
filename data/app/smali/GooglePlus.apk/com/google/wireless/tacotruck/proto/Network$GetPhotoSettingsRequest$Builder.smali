.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private userId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 53951
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 54047
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->userId_:Ljava/lang/Object;

    .line 53952
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 53953
    return-void
.end method

.method static synthetic access$76000()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 53946
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 53958
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 53956
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 53946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;
    .registers 3

    .prologue
    .line 53977
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    move-result-object v0

    .line 53978
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 53979
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 53981
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 53946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;
    .registers 6

    .prologue
    .line 53995
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 53996
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->bitField0_:I

    .line 53997
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 53998
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 53999
    or-int/lit8 v2, v2, 0x1

    .line 54001
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->userId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->userId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->access$76202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54002
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->access$76302(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;I)I

    .line 54003
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 53946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 53946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 53962
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 53963
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->userId_:Ljava/lang/Object;

    .line 53964
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->bitField0_:I

    .line 53965
    return-object p0
.end method

.method public clearUserId()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 54071
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->bitField0_:I

    .line 54072
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->userId_:Ljava/lang/Object;

    .line 54074
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 53946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 53946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;
    .registers 3

    .prologue
    .line 53969
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

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
    .line 53946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 53946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 53946
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;
    .registers 2

    .prologue
    .line 53973
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 54052
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->userId_:Ljava/lang/Object;

    .line 54053
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 54054
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 54055
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->userId_:Ljava/lang/Object;

    .line 54058
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

.method public hasUserId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 54049
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->bitField0_:I

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
    .line 54015
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
    .line 53946
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 53946
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

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
    .line 53946
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54023
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 54024
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 54029
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54031
    :sswitch_d
    return-object p0

    .line 54036
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->bitField0_:I

    .line 54037
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->userId_:Ljava/lang/Object;

    goto :goto_0

    .line 54024
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 54007
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 54011
    :cond_6
    :goto_6
    return-object p0

    .line 54008
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54009
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->setUserId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    goto :goto_6
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 54062
    if-nez p1, :cond_8

    .line 54063
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54065
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->bitField0_:I

    .line 54066
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->userId_:Ljava/lang/Object;

    .line 54068
    return-object p0
.end method
