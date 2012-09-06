.class public final Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Integrations.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Integrations$IntegrationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Integrations$Integration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Integrations$Integration;",
        "Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Integrations$IntegrationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private type_:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 329
    sget-object v0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;->LEGACY:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->type_:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    .line 230
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->maybeForceBuilderInitialization()V

    .line 231
    return-void
.end method

.method static synthetic access$100()Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;
    .registers 1

    .prologue
    .line 224
    invoke-static {}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->create()Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;
    .registers 1

    .prologue
    .line 236
    new-instance v0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 234
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->build()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Integrations$Integration;
    .registers 3

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v0

    .line 256
    .local v0, result:Lcom/google/wireless/contacts/proto/Integrations$Integration;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 257
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 259
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Integrations$Integration;
    .registers 6

    .prologue
    .line 273
    new-instance v1, Lcom/google/wireless/contacts/proto/Integrations$Integration;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Integrations$Integration;-><init>(Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;Lcom/google/wireless/contacts/proto/Integrations$1;)V

    .line 274
    .local v1, result:Lcom/google/wireless/contacts/proto/Integrations$Integration;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->bitField0_:I

    .line 275
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 276
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 277
    or-int/lit8 v2, v2, 0x1

    .line 279
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->type_:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    #setter for: Lcom/google/wireless/contacts/proto/Integrations$Integration;->type_:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->access$302(Lcom/google/wireless/contacts/proto/Integrations$Integration;Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;)Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    .line 280
    #setter for: Lcom/google/wireless/contacts/proto/Integrations$Integration;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->access$402(Lcom/google/wireless/contacts/proto/Integrations$Integration;I)I

    .line 281
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->clear()Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->clear()Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;
    .registers 2

    .prologue
    .line 240
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 241
    sget-object v0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;->LEGACY:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->type_:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    .line 242
    iget v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->bitField0_:I

    .line 243
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;
    .registers 2

    .prologue
    .line 346
    iget v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->bitField0_:I

    .line 347
    sget-object v0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;->LEGACY:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->type_:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    .line 349
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->clone()Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->clone()Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;
    .registers 3

    .prologue
    .line 247
    invoke-static {}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->create()Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Integrations$Integration;)Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

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
    .line 224
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->clone()Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Integrations$Integration;
    .registers 2

    .prologue
    .line 251
    invoke-static {}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->type_:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    return-object v0
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 331
    iget v1, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->bitField0_:I

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
    .line 293
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
    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 224
    check-cast p1, Lcom/google/wireless/contacts/proto/Integrations$Integration;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Integrations$Integration;)Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

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
    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 302
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_22

    .line 307
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    :sswitch_d
    return-object p0

    .line 314
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 315
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;->valueOf(I)Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    move-result-object v2

    .line 316
    .local v2, value:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;
    if-eqz v2, :cond_0

    .line 317
    iget v3, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->bitField0_:I

    .line 318
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->type_:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    goto :goto_0

    .line 302
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Integrations$Integration;)Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 285
    invoke-static {}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 289
    :cond_6
    :goto_6
    return-object p0

    .line 286
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->hasType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 287
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->getType()Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->setType(Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;)Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    goto :goto_6
.end method

.method public setType(Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;)Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 337
    if-nez p1, :cond_8

    .line 338
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 340
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->bitField0_:I

    .line 341
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->type_:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    .line 343
    return-object p0
.end method
