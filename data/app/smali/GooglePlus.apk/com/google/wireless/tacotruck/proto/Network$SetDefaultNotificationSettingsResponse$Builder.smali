.class public final Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44293
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 44294
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->maybeForceBuilderInitialization()V

    .line 44295
    return-void
.end method

.method static synthetic access$61500(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44288
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$61600()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 44288
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44326
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    move-result-object v0

    .line 44327
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 44328
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 44331
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 44300
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 44298
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44288
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;
    .registers 3

    .prologue
    .line 44317
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    move-result-object v0

    .line 44318
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 44319
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 44321
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44288
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;
    .registers 3

    .prologue
    .line 44335
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 44336
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 44288
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 44288
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 44304
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 44305
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 44288
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 44288
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;
    .registers 3

    .prologue
    .line 44309
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;

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
    .line 44288
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 44288
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44288
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;
    .registers 2

    .prologue
    .line 44313
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 44345
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
    .line 44288
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 44288
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;

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
    .line 44288
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44353
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 44354
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 44359
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44361
    :pswitch_d
    return-object p0

    .line 44354
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 44340
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 44341
    :cond_6
    return-object p0
.end method
