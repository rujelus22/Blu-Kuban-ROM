.class public final Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$TypingResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$TypingResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 8824
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8924
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 8825
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->maybeForceBuilderInitialization()V

    .line 8826
    return-void
.end method

.method static synthetic access$11700()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    .registers 1

    .prologue
    .line 8819
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    .registers 1

    .prologue
    .line 8831
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 8829
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    .registers 3

    .prologue
    .line 8850
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    .line 8851
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 8852
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8854
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8819
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    .registers 6

    .prologue
    .line 8868
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 8869
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->bitField0_:I

    .line 8870
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8871
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 8872
    or-int/lit8 v2, v2, 0x1

    .line 8874
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->access$11902(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 8875
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->access$12002(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;I)I

    .line 8876
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8819
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8819
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    .registers 2

    .prologue
    .line 8835
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 8836
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 8837
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->bitField0_:I

    .line 8838
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    .registers 2

    .prologue
    .line 8941
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->bitField0_:I

    .line 8942
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 8944
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 8819
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8819
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    .registers 3

    .prologue
    .line 8842
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

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
    .line 8819
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 8819
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8819
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    .registers 2

    .prologue
    .line 8846
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 8929
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8926
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->bitField0_:I

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
    .line 8819
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

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
    .line 8819
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8896
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 8897
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_22

    .line 8902
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8904
    :sswitch_d
    return-object p0

    .line 8909
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 8910
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 8911
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 8912
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->bitField0_:I

    .line 8913
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 8897
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 8880
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 8884
    :cond_6
    :goto_6
    return-object p0

    .line 8881
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8882
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    goto :goto_6
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8932
    if-nez p1, :cond_8

    .line 8933
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8935
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->bitField0_:I

    .line 8936
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 8938
    return-object p0
.end method
