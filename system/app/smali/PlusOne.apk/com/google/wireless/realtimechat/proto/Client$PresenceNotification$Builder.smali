.class public final Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$PresenceNotificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;",
        "Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$PresenceNotificationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 6404
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6405
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->maybeForceBuilderInitialization()V

    .line 6406
    return-void
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;
    .registers 1

    .prologue
    .line 6411
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 6409
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6399
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;
    .registers 3

    .prologue
    .line 6446
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;-><init>(Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 6447
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6399
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6399
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;
    .registers 1

    .prologue
    .line 6415
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6416
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 6399
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6399
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;
    .registers 3

    .prologue
    .line 6420
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;)Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;

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
    .line 6399
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 6399
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6399
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;
    .registers 2

    .prologue
    .line 6424
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;

    move-result-object v0

    return-object v0
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
    .line 6399
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;

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
    .line 6399
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6464
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 6465
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 6470
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6472
    :pswitch_d
    return-object p0

    .line 6465
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;)Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 6451
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 6452
    :cond_6
    return-object p0
.end method
