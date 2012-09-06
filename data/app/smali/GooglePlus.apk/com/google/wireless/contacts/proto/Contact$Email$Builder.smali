.class public final Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Contact.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Contact$EmailOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact$Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Contact$Email;",
        "Lcom/google/wireless/contacts/proto/Contact$Email$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Contact$EmailOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private email_:Ljava/lang/Object;

.field private evergreen_:Z

.field private metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

.field private type_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 419
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 462
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->email_:Ljava/lang/Object;

    .line 498
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->type_:Ljava/lang/Object;

    .line 278
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->maybeForceBuilderInitialization()V

    .line 279
    return-void
.end method

.method static synthetic access$100()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    .registers 1

    .prologue
    .line 272
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    .registers 1

    .prologue
    .line 284
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 282
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$Email;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Contact$Email;
    .registers 3

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$Email;

    move-result-object v0

    .line 310
    .local v0, result:Lcom/google/wireless/contacts/proto/Contact$Email;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Email;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 311
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 313
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$Email;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Contact$Email;
    .registers 6

    .prologue
    .line 327
    new-instance v1, Lcom/google/wireless/contacts/proto/Contact$Email;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Contact$Email;-><init>(Lcom/google/wireless/contacts/proto/Contact$Email$Builder;Lcom/google/wireless/contacts/proto/Contact$1;)V

    .line 328
    .local v1, result:Lcom/google/wireless/contacts/proto/Contact$Email;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 329
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 330
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 331
    or-int/lit8 v2, v2, 0x1

    .line 333
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$Email;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$Email;->access$302(Lcom/google/wireless/contacts/proto/Contact$Email;Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 334
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 335
    or-int/lit8 v2, v2, 0x2

    .line 337
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->email_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$Email;->email_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$Email;->access$402(Lcom/google/wireless/contacts/proto/Contact$Email;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 339
    or-int/lit8 v2, v2, 0x4

    .line 341
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->type_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$Email;->type_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$Email;->access$502(Lcom/google/wireless/contacts/proto/Contact$Email;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 343
    or-int/lit8 v2, v2, 0x8

    .line 345
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->evergreen_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Contact$Email;->evergreen_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$Email;->access$602(Lcom/google/wireless/contacts/proto/Contact$Email;Z)Z

    .line 346
    #setter for: Lcom/google/wireless/contacts/proto/Contact$Email;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Contact$Email;->access$702(Lcom/google/wireless/contacts/proto/Contact$Email;I)I

    .line 347
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->clear()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->clear()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    .registers 2

    .prologue
    .line 288
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 289
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 290
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 291
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->email_:Ljava/lang/Object;

    .line 292
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 293
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->type_:Ljava/lang/Object;

    .line 294
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->evergreen_:Z

    .line 296
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 297
    return-object p0
.end method

.method public clearEmail()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    .registers 2

    .prologue
    .line 486
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 487
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Email;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$Email;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Email;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->email_:Ljava/lang/Object;

    .line 489
    return-object p0
.end method

.method public clearEvergreen()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    .registers 2

    .prologue
    .line 548
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->evergreen_:Z

    .line 551
    return-object p0
.end method

.method public clearMetadata()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    .registers 2

    .prologue
    .line 455
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 457
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 458
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    .registers 2

    .prologue
    .line 522
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 523
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Email;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$Email;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Email;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->type_:Ljava/lang/Object;

    .line 525
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    .registers 3

    .prologue
    .line 301
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$Email;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$Email;)Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

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
    .line 272
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$Email;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$Email;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$Email;
    .registers 2

    .prologue
    .line 305
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Email;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$Email;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 4

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->email_:Ljava/lang/Object;

    .line 468
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 469
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->email_:Ljava/lang/Object;

    .line 473
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

.method public getEvergreen()Z
    .registers 2

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->evergreen_:Z

    return v0
.end method

.method public getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->type_:Ljava/lang/Object;

    .line 504
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 505
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->type_:Ljava/lang/Object;

    .line 509
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

.method public hasEmail()Z
    .registers 3

    .prologue
    .line 464
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

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

.method public hasEvergreen()Z
    .registers 3

    .prologue
    .line 536
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMetadata()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 421
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 500
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 368
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
    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 272
    check-cast p1, Lcom/google/wireless/contacts/proto/Contact$Email;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$Email;)Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

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
    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 377
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_52

    .line 382
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    :sswitch_d
    return-object p0

    .line 389
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilder()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    .line 390
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->hasMetadata()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 391
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    .line 393
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 394
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

    goto :goto_0

    .line 398
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 399
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->email_:Ljava/lang/Object;

    goto :goto_0

    .line 403
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 404
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->type_:Ljava/lang/Object;

    goto :goto_0

    .line 408
    :sswitch_44
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 409
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->evergreen_:Z

    goto :goto_0

    .line 377
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_37
        0x20 -> :sswitch_44
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Contact$Email;)Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 351
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Email;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$Email;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 364
    :cond_6
    :goto_6
    return-object p0

    .line 352
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Email;->hasMetadata()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 353
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Email;->getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->mergeMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

    .line 355
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Email;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 356
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Email;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

    .line 358
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Email;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 359
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Email;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->setType(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

    .line 361
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Email;->hasEvergreen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 362
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Email;->getEvergreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->setEvergreen(Z)Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

    goto :goto_6
.end method

.method public mergeMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 443
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 445
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilder(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 451
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 452
    return-object p0

    .line 448
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    goto :goto_1f
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 477
    if-nez p1, :cond_8

    .line 478
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 480
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 481
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->email_:Ljava/lang/Object;

    .line 483
    return-object p0
.end method

.method public setEvergreen(Z)Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 542
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 543
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->evergreen_:Z

    .line 545
    return-object p0
.end method

.method public setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;)Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 437
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->build()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 439
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 440
    return-object p0
.end method

.method public setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 427
    if-nez p1, :cond_8

    .line 428
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 430
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 432
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 433
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 513
    if-nez p1, :cond_8

    .line 514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 516
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->bitField0_:I

    .line 517
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->type_:Ljava/lang/Object;

    .line 519
    return-object p0
.end method
