.class public final Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Webclient.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Webclient$ExternalEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;",
        "Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Webclient$ExternalEventOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

.field private startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 307
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    .line 350
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    .line 190
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->maybeForceBuilderInitialization()V

    .line 191
    return-void
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;
    .registers 1

    .prologue
    .line 196
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 194
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;
    .registers 6

    .prologue
    .line 235
    new-instance v1, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;-><init>(Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;Lcom/google/wireless/contacts/proto/Webclient$1;)V

    .line 236
    .local v1, result:Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    .line 237
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 238
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 239
    or-int/lit8 v2, v2, 0x1

    .line 241
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    #setter for: Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->access$302(Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    .line 242
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 243
    or-int/lit8 v2, v2, 0x2

    .line 245
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    #setter for: Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->access$402(Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;)Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    .line 246
    #setter for: Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->access$502(Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;I)I

    .line 247
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->clear()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->clear()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;
    .registers 2

    .prologue
    .line 200
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 201
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    .line 202
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    .line 203
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    .line 204
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    .line 205
    return-object p0
.end method

.method public clearNewContactsFetchedEvent()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;
    .registers 2

    .prologue
    .line 343
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    .line 345
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    .line 346
    return-object p0
.end method

.method public clearStartFetchEvent()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;
    .registers 2

    .prologue
    .line 386
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    .line 388
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    .line 389
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;
    .registers 3

    .prologue
    .line 209
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->create()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;)Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;

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
    .line 184
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;
    .registers 2

    .prologue
    .line 213
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;

    move-result-object v0

    return-object v0
.end method

.method public getNewContactsFetchedEvent()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    return-object v0
.end method

.method public getStartFetchEvent()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    return-object v0
.end method

.method public hasNewContactsFetchedEvent()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 309
    iget v1, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStartFetchEvent()Z
    .registers 3

    .prologue
    .line 352
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

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
    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;

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
    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 271
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_46

    .line 276
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    :sswitch_d
    return-object p0

    .line 283
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->newBuilder()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    move-result-object v0

    .line 284
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->hasNewContactsFetchedEvent()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 285
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->getNewContactsFetchedEvent()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    .line 287
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 288
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->setNewContactsFetchedEvent(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;)Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;

    goto :goto_0

    .line 292
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->newBuilder()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    .line 293
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->hasStartFetchEvent()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 294
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->getStartFetchEvent()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;)Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    .line 296
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 297
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->setStartFetchEvent(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;)Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;

    goto :goto_0

    .line 271
    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;)Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 251
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 258
    :cond_6
    :goto_6
    return-object p0

    .line 252
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->hasNewContactsFetchedEvent()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 253
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->getNewContactsFetchedEvent()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->mergeNewContactsFetchedEvent(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;)Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;

    .line 255
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->hasStartFetchEvent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 256
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->getStartFetchEvent()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->mergeStartFetchEvent(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;)Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;

    goto :goto_6
.end method

.method public mergeNewContactsFetchedEvent(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;)Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 331
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 333
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->newBuilder(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    .line 339
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    .line 340
    return-object p0

    .line 336
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    goto :goto_1f
.end method

.method public mergeStartFetchEvent(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;)Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 374
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 376
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->newBuilder(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;)Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;)Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    .line 382
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    .line 383
    return-object p0

    .line 379
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    goto :goto_1f
.end method

.method public setNewContactsFetchedEvent(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;)Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 325
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->build()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    .line 327
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    .line 328
    return-object p0
.end method

.method public setNewContactsFetchedEvent(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;)Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 315
    if-nez p1, :cond_8

    .line 316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 318
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    .line 320
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    .line 321
    return-object p0
.end method

.method public setStartFetchEvent(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;)Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 368
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->build()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    .line 370
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    .line 371
    return-object p0
.end method

.method public setStartFetchEvent(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;)Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 358
    if-nez p1, :cond_8

    .line 359
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 361
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    .line 363
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;->bitField0_:I

    .line 364
    return-object p0
.end method
