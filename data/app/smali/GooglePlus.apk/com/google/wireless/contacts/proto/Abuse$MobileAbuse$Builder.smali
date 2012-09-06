.class public final Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Abuse.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Abuse$MobileAbuseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;",
        "Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Abuse$MobileAbuseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private type_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 326
    sget-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->CHILD_ABUSE:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->type_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    .line 227
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->maybeForceBuilderInitialization()V

    .line 228
    return-void
.end method

.method static synthetic access$100()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;
    .registers 1

    .prologue
    .line 221
    invoke-static {}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->create()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;
    .registers 1

    .prologue
    .line 233
    new-instance v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 231
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->build()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;
    .registers 3

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v0

    .line 253
    .local v0, result:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 254
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 256
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;
    .registers 6

    .prologue
    .line 270
    new-instance v1, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;-><init>(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;Lcom/google/wireless/contacts/proto/Abuse$1;)V

    .line 271
    .local v1, result:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->bitField0_:I

    .line 272
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 273
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 274
    or-int/lit8 v2, v2, 0x1

    .line 276
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->type_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    #setter for: Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->type_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->access$302(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    .line 277
    #setter for: Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->access$402(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;I)I

    .line 278
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->clear()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->clear()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;
    .registers 2

    .prologue
    .line 237
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 238
    sget-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->CHILD_ABUSE:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->type_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    .line 239
    iget v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->bitField0_:I

    .line 240
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;
    .registers 2

    .prologue
    .line 343
    iget v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->bitField0_:I

    .line 344
    sget-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->CHILD_ABUSE:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->type_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    .line 346
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->clone()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->clone()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;
    .registers 3

    .prologue
    .line 244
    invoke-static {}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->create()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

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
    .line 221
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->clone()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;
    .registers 2

    .prologue
    .line 248
    invoke-static {}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->type_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    return-object v0
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 328
    iget v1, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->bitField0_:I

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
    .line 290
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
    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 221
    check-cast p1, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

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
    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 299
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_22

    .line 304
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    :sswitch_d
    return-object p0

    .line 311
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 312
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->valueOf(I)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    move-result-object v2

    .line 313
    .local v2, value:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;
    if-eqz v2, :cond_0

    .line 314
    iget v3, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->bitField0_:I

    .line 315
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->type_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    goto :goto_0

    .line 299
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 282
    invoke-static {}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 286
    :cond_6
    :goto_6
    return-object p0

    .line 283
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->hasType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 284
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->getType()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->setType(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;

    goto :goto_6
.end method

.method public setType(Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 334
    if-nez p1, :cond_8

    .line 335
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 337
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->bitField0_:I

    .line 338
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Builder;->type_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    .line 340
    return-object p0
.end method
