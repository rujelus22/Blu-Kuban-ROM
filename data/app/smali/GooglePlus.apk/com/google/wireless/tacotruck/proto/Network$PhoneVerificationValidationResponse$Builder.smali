.class public final Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 52060
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 52160
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    .line 52061
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->maybeForceBuilderInitialization()V

    .line 52062
    return-void
.end method

.method static synthetic access$73200()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;
    .registers 1

    .prologue
    .line 52055
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;
    .registers 1

    .prologue
    .line 52067
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 52065
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52055
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;
    .registers 3

    .prologue
    .line 52086
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    move-result-object v0

    .line 52087
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 52088
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 52090
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52055
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;
    .registers 6

    .prologue
    .line 52104
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 52105
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->bitField0_:I

    .line 52106
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 52107
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 52108
    or-int/lit8 v2, v2, 0x1

    .line 52110
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->access$73402(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    .line 52111
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->access$73502(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;I)I

    .line 52112
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 52055
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 52055
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;
    .registers 2

    .prologue
    .line 52071
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 52072
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    .line 52073
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->bitField0_:I

    .line 52074
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;
    .registers 2

    .prologue
    .line 52177
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->bitField0_:I

    .line 52178
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    .line 52180
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 52055
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 52055
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;
    .registers 3

    .prologue
    .line 52078
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

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
    .line 52055
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 52055
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52055
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;
    .registers 2

    .prologue
    .line 52082
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;
    .registers 2

    .prologue
    .line 52165
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 52162
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->bitField0_:I

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
    .line 52124
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
    .line 52055
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 52055
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

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
    .line 52055
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52132
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 52133
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_22

    .line 52138
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52140
    :sswitch_d
    return-object p0

    .line 52145
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 52146
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    move-result-object v2

    .line 52147
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;
    if-eqz v2, :cond_0

    .line 52148
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->bitField0_:I

    .line 52149
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    goto :goto_0

    .line 52133
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 52116
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 52120
    :cond_6
    :goto_6
    return-object p0

    .line 52117
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 52118
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->getStatus()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->setStatus(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

    goto :goto_6
.end method

.method public setStatus(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 52168
    if-nez p1, :cond_8

    .line 52169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52171
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->bitField0_:I

    .line 52172
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    .line 52174
    return-object p0
.end method
