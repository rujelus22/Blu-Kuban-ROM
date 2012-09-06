.class public final Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Formatting.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/data/FormattingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/data/Formatting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/tacotown/proto/data/Formatting;",
        "Lcom/google/apps/tacotown/proto/data/Formatting$Builder;",
        ">;",
        "Lcom/google/apps/tacotown/proto/data/FormattingOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private bold_:Z

.field private italics_:Z

.field private strikethrough_:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 191
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->maybeForceBuilderInitialization()V

    .line 192
    return-void
.end method

.method static synthetic access$100()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
    .registers 1

    .prologue
    .line 185
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->create()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
    .registers 1

    .prologue
    .line 197
    new-instance v0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 195
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/tacotown/proto/data/Formatting;
    .registers 3

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v0

    .line 221
    .local v0, result:Lcom/google/apps/tacotown/proto/data/Formatting;
    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/data/Formatting;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 222
    invoke-static {v0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 224
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->build()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/tacotown/proto/data/Formatting;
    .registers 6

    .prologue
    .line 238
    new-instance v1, Lcom/google/apps/tacotown/proto/data/Formatting;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/tacotown/proto/data/Formatting;-><init>(Lcom/google/apps/tacotown/proto/data/Formatting$Builder;Lcom/google/apps/tacotown/proto/data/Formatting$1;)V

    .line 239
    .local v1, result:Lcom/google/apps/tacotown/proto/data/Formatting;
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    .line 240
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 241
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 242
    or-int/lit8 v2, v2, 0x1

    .line 244
    :cond_10
    iget-boolean v3, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bold_:Z

    #setter for: Lcom/google/apps/tacotown/proto/data/Formatting;->bold_:Z
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/Formatting;->access$302(Lcom/google/apps/tacotown/proto/data/Formatting;Z)Z

    .line 245
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 246
    or-int/lit8 v2, v2, 0x2

    .line 248
    :cond_1c
    iget-boolean v3, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->italics_:Z

    #setter for: Lcom/google/apps/tacotown/proto/data/Formatting;->italics_:Z
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/Formatting;->access$402(Lcom/google/apps/tacotown/proto/data/Formatting;Z)Z

    .line 249
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 250
    or-int/lit8 v2, v2, 0x4

    .line 252
    :cond_28
    iget-boolean v3, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->strikethrough_:Z

    #setter for: Lcom/google/apps/tacotown/proto/data/Formatting;->strikethrough_:Z
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/Formatting;->access$502(Lcom/google/apps/tacotown/proto/data/Formatting;Z)Z

    .line 253
    #setter for: Lcom/google/apps/tacotown/proto/data/Formatting;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/tacotown/proto/data/Formatting;->access$602(Lcom/google/apps/tacotown/proto/data/Formatting;I)I

    .line 254
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 202
    iput-boolean v1, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bold_:Z

    .line 203
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    .line 204
    iput-boolean v1, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->italics_:Z

    .line 205
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    .line 206
    iput-boolean v1, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->strikethrough_:Z

    .line 207
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    .line 208
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->clear()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->clear()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
    .registers 3

    .prologue
    .line 212
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->create()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Formatting;)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->clone()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->clone()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

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
    .line 185
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->clone()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Formatting;
    .registers 2

    .prologue
    .line 216
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Formatting;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/apps/tacotown/proto/data/Formatting;)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 258
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Formatting;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 268
    :cond_6
    :goto_6
    return-object p0

    .line 259
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Formatting;->hasBold()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 260
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Formatting;->getBold()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->setBold(Z)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    .line 262
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Formatting;->hasItalics()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 263
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Formatting;->getItalics()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->setItalics(Z)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    .line 265
    :cond_21
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Formatting;->hasStrikethrough()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 266
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Formatting;->getStrikethrough()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->setStrikethrough(Z)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 281
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 286
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    :sswitch_d
    return-object p0

    .line 293
    :sswitch_e
    iget v1, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    .line 294
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bold_:Z

    goto :goto_0

    .line 298
    :sswitch_1b
    iget v1, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    .line 299
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->italics_:Z

    goto :goto_0

    .line 303
    :sswitch_28
    iget v1, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    .line 304
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->strikethrough_:Z

    goto :goto_0

    .line 281
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
    .end sparse-switch
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
    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 185
    check-cast p1, Lcom/google/apps/tacotown/proto/data/Formatting;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Formatting;)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

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
    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBold(Z)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 322
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    .line 323
    iput-boolean p1, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bold_:Z

    .line 325
    return-object p0
.end method

.method public setItalics(Z)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 343
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    .line 344
    iput-boolean p1, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->italics_:Z

    .line 346
    return-object p0
.end method

.method public setStrikethrough(Z)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 364
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->bitField0_:I

    .line 365
    iput-boolean p1, p0, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->strikethrough_:Z

    .line 367
    return-object p0
.end method
