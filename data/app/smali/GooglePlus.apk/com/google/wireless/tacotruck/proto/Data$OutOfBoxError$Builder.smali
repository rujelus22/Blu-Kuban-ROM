.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxErrorOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private text_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 35249
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 35363
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NO_AGE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 35387
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->text_:Ljava/lang/Object;

    .line 35250
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->maybeForceBuilderInitialization()V

    .line 35251
    return-void
.end method

.method static synthetic access$47500()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 1

    .prologue
    .line 35244
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 1

    .prologue
    .line 35256
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 35254
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 3

    .prologue
    .line 35277
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    .line 35278
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 35279
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 35281
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 6

    .prologue
    .line 35295
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 35296
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 35297
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 35298
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 35299
    or-int/lit8 v2, v2, 0x1

    .line 35301
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->access$47702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 35302
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 35303
    or-int/lit8 v2, v2, 0x2

    .line 35305
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->text_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->access$47802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35306
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->access$47902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;I)I

    .line 35307
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 35244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 2

    .prologue
    .line 35260
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 35261
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NO_AGE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 35262
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 35263
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->text_:Ljava/lang/Object;

    .line 35264
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 35265
    return-object p0
.end method

.method public clearText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 2

    .prologue
    .line 35411
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 35412
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->text_:Ljava/lang/Object;

    .line 35414
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 2

    .prologue
    .line 35380
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 35381
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NO_AGE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 35383
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 35244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 35244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 3

    .prologue
    .line 35269
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

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
    .line 35244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 35244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 2

    .prologue
    .line 35273
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 35392
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->text_:Ljava/lang/Object;

    .line 35393
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 35394
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 35395
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->text_:Ljava/lang/Object;

    .line 35398
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

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
    .registers 2

    .prologue
    .line 35368
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    return-object v0
.end method

.method public hasText()Z
    .registers 3

    .prologue
    .line 35389
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

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

    .line 35365
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

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
    .line 35322
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
    .line 35244
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 35244
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

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
    .line 35244
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35330
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 35331
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 35336
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 35338
    :sswitch_d
    return-object p0

    .line 35343
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 35344
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    move-result-object v2

    .line 35345
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
    if-eqz v2, :cond_0

    .line 35346
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 35347
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    goto :goto_0

    .line 35352
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 35353
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->text_:Ljava/lang/Object;

    goto :goto_0

    .line 35331
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 35311
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 35318
    :cond_6
    :goto_6
    return-object p0

    .line 35312
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 35313
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    .line 35315
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->hasText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35316
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->setText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    goto :goto_6
.end method

.method public setText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35402
    if-nez p1, :cond_8

    .line 35403
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35405
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 35406
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->text_:Ljava/lang/Object;

    .line 35408
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35371
    if-nez p1, :cond_8

    .line 35372
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35374
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->bitField0_:I

    .line 35375
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 35377
    return-object p0
.end method
