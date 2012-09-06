.class public final Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TracingCookieProtos.java"

# interfaces
.implements Lcom/google/goggles/TracingCookieProtos$TracingCookieRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;",
        "Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;",
        ">;",
        "Lcom/google/goggles/TracingCookieProtos$TracingCookieRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private maxCookies_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 263
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->maxCookies_:I

    .line 168
    invoke-direct {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->maybeForceBuilderInitialization()V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;)Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->buildParsed()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;
    .registers 1

    .prologue
    .line 162
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->create()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->buildPartial()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 204
    invoke-static {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 207
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;
    .registers 1

    .prologue
    .line 174
    new-instance v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    invoke-direct {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 172
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;
    .registers 3

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->buildPartial()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 195
    invoke-static {v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 197
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->build()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 211
    new-instance v2, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;-><init>(Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;Lcom/google/goggles/TracingCookieProtos$1;)V

    .line 212
    iget v3, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->bitField0_:I

    .line 213
    const/4 v1, 0x0

    .line 214
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_17

    .line 217
    :goto_e
    iget v1, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->maxCookies_:I

    #setter for: Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->maxCookies_:I
    invoke-static {v2, v1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->access$302(Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;I)I

    .line 218
    #setter for: Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->access$402(Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;I)I

    .line 219
    return-object v2

    :cond_17
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->buildPartial()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;
    .registers 2

    .prologue
    .line 178
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 179
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->maxCookies_:I

    .line 180
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->bitField0_:I

    .line 181
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->clear()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->clear()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMaxCookies()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;
    .registers 2

    .prologue
    .line 277
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->bitField0_:I

    .line 278
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->maxCookies_:I

    .line 280
    return-object p0
.end method

.method public clone()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;
    .registers 3

    .prologue
    .line 185
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->create()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->buildPartial()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->mergeFrom(Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;)Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->clone()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->clone()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->clone()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

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
    .line 162
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->clone()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;
    .registers 2

    .prologue
    .line 189
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->getDefaultInstance()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->getDefaultInstanceForType()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCookies()I
    .registers 2

    .prologue
    .line 268
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->maxCookies_:I

    return v0
.end method

.method public hasMaxCookies()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 265
    iget v1, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->bitField0_:I

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
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;)Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 223
    invoke-static {}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->getDefaultInstance()Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 227
    :cond_6
    :goto_6
    return-object p0

    .line 224
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->hasMaxCookies()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 225
    invoke-virtual {p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;->getMaxCookies()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->setMaxCookies(I)Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 240
    sparse-switch v0, :sswitch_data_1c

    .line 245
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    :sswitch_d
    return-object p0

    .line 252
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->bitField0_:I

    .line 253
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->maxCookies_:I

    goto :goto_0

    .line 240
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
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
    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 162
    check-cast p1, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;

    invoke-virtual {p0, p1}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->mergeFrom(Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest;)Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

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
    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMaxCookies(I)Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;
    .registers 3
    .parameter

    .prologue
    .line 271
    iget v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->bitField0_:I

    .line 272
    iput p1, p0, Lcom/google/goggles/TracingCookieProtos$TracingCookieRequest$Builder;->maxCookies_:I

    .line 274
    return-object p0
.end method
