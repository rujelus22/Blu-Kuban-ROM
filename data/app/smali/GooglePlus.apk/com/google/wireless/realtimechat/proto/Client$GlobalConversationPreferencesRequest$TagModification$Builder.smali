.class public final Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;",
        "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModificationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private tag_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 21281
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 21395
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->ADD:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    .line 21419
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->tag_:Ljava/lang/Object;

    .line 21282
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->maybeForceBuilderInitialization()V

    .line 21283
    return-void
.end method

.method static synthetic access$28400()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;
    .registers 1

    .prologue
    .line 21276
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;
    .registers 1

    .prologue
    .line 21288
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 21286
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21276
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;
    .registers 3

    .prologue
    .line 21309
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    move-result-object v0

    .line 21310
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 21311
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 21313
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21276
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;
    .registers 6

    .prologue
    .line 21327
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;-><init>(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 21328
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

    .line 21329
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 21330
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 21331
    or-int/lit8 v2, v2, 0x1

    .line 21333
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->access$28602(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    .line 21334
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 21335
    or-int/lit8 v2, v2, 0x2

    .line 21337
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->tag_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->tag_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->access$28702(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21338
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->access$28802(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;I)I

    .line 21339
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21276
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21276
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;
    .registers 2

    .prologue
    .line 21292
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21293
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->ADD:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    .line 21294
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

    .line 21295
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->tag_:Ljava/lang/Object;

    .line 21296
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

    .line 21297
    return-object p0
.end method

.method public clearTag()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;
    .registers 2

    .prologue
    .line 21443
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

    .line 21444
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->tag_:Ljava/lang/Object;

    .line 21446
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;
    .registers 2

    .prologue
    .line 21412
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

    .line 21413
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->ADD:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    .line 21415
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 21276
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21276
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;
    .registers 3

    .prologue
    .line 21301
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;

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
    .line 21276
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 21276
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21276
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;
    .registers 2

    .prologue
    .line 21305
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 4

    .prologue
    .line 21424
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->tag_:Ljava/lang/Object;

    .line 21425
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 21426
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21427
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->tag_:Ljava/lang/Object;

    .line 21430
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

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;
    .registers 2

    .prologue
    .line 21400
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    return-object v0
.end method

.method public hasTag()Z
    .registers 3

    .prologue
    .line 21421
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 21397
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

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
    .line 21354
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
    .line 21276
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 21276
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;

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
    .line 21276
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21362
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 21363
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 21368
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 21370
    :sswitch_d
    return-object p0

    .line 21375
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 21376
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    move-result-object v2

    .line 21377
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;
    if-eqz v2, :cond_0

    .line 21378
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

    .line 21379
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    goto :goto_0

    .line 21384
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

    .line 21385
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->tag_:Ljava/lang/Object;

    goto :goto_0

    .line 21363
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 21343
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 21350
    :cond_6
    :goto_6
    return-object p0

    .line 21344
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 21345
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->getType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;

    .line 21347
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21348
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->setTag(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;

    goto :goto_6
.end method

.method public setTag(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21434
    if-nez p1, :cond_8

    .line 21435
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21437
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

    .line 21438
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->tag_:Ljava/lang/Object;

    .line 21440
    return-object p0
.end method

.method public setType(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21403
    if-nez p1, :cond_8

    .line 21404
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21406
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->bitField0_:I

    .line 21407
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    .line 21409
    return-object p0
.end method
