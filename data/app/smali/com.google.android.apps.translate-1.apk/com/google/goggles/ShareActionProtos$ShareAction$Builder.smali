.class public final Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ShareActionProtos.java"

# interfaces
.implements Lcom/google/goggles/ShareActionProtos$ShareActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ShareActionProtos$ShareAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/ShareActionProtos$ShareAction;",
        "Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;",
        ">;",
        "Lcom/google/goggles/ShareActionProtos$ShareActionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private text_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 285
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->text_:Ljava/lang/Object;

    .line 190
    invoke-direct {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->maybeForceBuilderInitialization()V

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;)Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->buildParsed()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;
    .registers 1

    .prologue
    .line 184
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->create()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->buildPartial()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 226
    invoke-static {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 229
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;
    .registers 1

    .prologue
    .line 196
    new-instance v0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    invoke-direct {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 194
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 3

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->buildPartial()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 217
    invoke-static {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 219
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->build()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 233
    new-instance v2, Lcom/google/goggles/ShareActionProtos$ShareAction;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/ShareActionProtos$ShareAction;-><init>(Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;Lcom/google/goggles/ShareActionProtos$1;)V

    .line 234
    iget v3, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->bitField0_:I

    .line 235
    const/4 v1, 0x0

    .line 236
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_17

    .line 239
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ShareActionProtos$ShareAction;->text_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ShareActionProtos$ShareAction;->access$302(Lcom/google/goggles/ShareActionProtos$ShareAction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    #setter for: Lcom/google/goggles/ShareActionProtos$ShareAction;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/ShareActionProtos$ShareAction;->access$402(Lcom/google/goggles/ShareActionProtos$ShareAction;I)I

    .line 241
    return-object v2

    :cond_17
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->buildPartial()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;
    .registers 2

    .prologue
    .line 200
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->text_:Ljava/lang/Object;

    .line 202
    iget v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->bitField0_:I

    .line 203
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->clear()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->clear()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearText()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;
    .registers 2

    .prologue
    .line 309
    iget v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->bitField0_:I

    .line 310
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->getDefaultInstance()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ShareActionProtos$ShareAction;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->text_:Ljava/lang/Object;

    .line 312
    return-object p0
.end method

.method public clone()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;
    .registers 3

    .prologue
    .line 207
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->create()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->buildPartial()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->mergeFrom(Lcom/google/goggles/ShareActionProtos$ShareAction;)Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->clone()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->clone()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->clone()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

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
    invoke-virtual {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->clone()Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ShareActionProtos$ShareAction;
    .registers 2

    .prologue
    .line 211
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->getDefaultInstance()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->text_:Ljava/lang/Object;

    .line 291
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 292
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 293
    iput-object v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->text_:Ljava/lang/Object;

    .line 296
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasText()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 287
    iget v1, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->bitField0_:I

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
    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/ShareActionProtos$ShareAction;)Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;
    .registers 3
    .parameter

    .prologue
    .line 245
    invoke-static {}, Lcom/google/goggles/ShareActionProtos$ShareAction;->getDefaultInstance()Lcom/google/goggles/ShareActionProtos$ShareAction;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 249
    :cond_6
    :goto_6
    return-object p0

    .line 246
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/ShareActionProtos$ShareAction;->hasText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 247
    invoke-virtual {p1}, Lcom/google/goggles/ShareActionProtos$ShareAction;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->setText(Ljava/lang/String;)Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 262
    sparse-switch v0, :sswitch_data_1c

    .line 267
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    :sswitch_d
    return-object p0

    .line 274
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->bitField0_:I

    .line 275
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->text_:Ljava/lang/Object;

    goto :goto_0

    .line 262
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 184
    check-cast p1, Lcom/google/goggles/ShareActionProtos$ShareAction;

    invoke-virtual {p0, p1}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->mergeFrom(Lcom/google/goggles/ShareActionProtos$ShareAction;)Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;
    .registers 3
    .parameter

    .prologue
    .line 300
    if-nez p1, :cond_8

    .line 301
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 303
    :cond_8
    iget v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->bitField0_:I

    .line 304
    iput-object p1, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->text_:Ljava/lang/Object;

    .line 306
    return-object p0
.end method

.method setText(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 315
    iget v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->bitField0_:I

    .line 316
    iput-object p1, p0, Lcom/google/goggles/ShareActionProtos$ShareAction$Builder;->text_:Ljava/lang/Object;

    .line 318
    return-void
.end method
