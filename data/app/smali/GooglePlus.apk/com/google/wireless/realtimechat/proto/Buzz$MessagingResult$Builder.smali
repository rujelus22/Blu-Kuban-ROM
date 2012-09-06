.class public final Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 3133
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3134
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->maybeForceBuilderInitialization()V

    .line 3135
    return-void
.end method

.method static synthetic access$4300()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;
    .registers 1

    .prologue
    .line 3128
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;
    .registers 1

    .prologue
    .line 3140
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3138
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->build()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;
    .registers 3

    .prologue
    .line 3157
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;

    move-result-object v0

    .line 3158
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3159
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3161
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;
    .registers 3

    .prologue
    .line 3175
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V

    .line 3176
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;
    .registers 1

    .prologue
    .line 3144
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3145
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;
    .registers 3

    .prologue
    .line 3149
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;

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
    .line 3128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3128
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;
    .registers 2

    .prologue
    .line 3153
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 3185
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
    .line 3128
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3128
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;

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
    .line 3128
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3193
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3194
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 3199
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3201
    :pswitch_d
    return-object p0

    .line 3194
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 3180
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 3181
    :cond_6
    return-object p0
.end method
