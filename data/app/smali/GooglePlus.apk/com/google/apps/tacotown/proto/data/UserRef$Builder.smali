.class public final Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UserRef.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/data/UserRefOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/data/UserRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/tacotown/proto/data/UserRef;",
        "Lcom/google/apps/tacotown/proto/data/UserRef$Builder;",
        ">;",
        "Lcom/google/apps/tacotown/proto/data/UserRefOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private email_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private userId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 380
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->userId_:Ljava/lang/Object;

    .line 416
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->email_:Ljava/lang/Object;

    .line 452
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->name_:Ljava/lang/Object;

    .line 257
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->maybeForceBuilderInitialization()V

    .line 258
    return-void
.end method

.method static synthetic access$100()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
    .registers 1

    .prologue
    .line 251
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->create()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
    .registers 1

    .prologue
    .line 263
    new-instance v0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 261
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/tacotown/proto/data/UserRef;
    .registers 3

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v0

    .line 287
    .local v0, result:Lcom/google/apps/tacotown/proto/data/UserRef;
    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/data/UserRef;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 288
    invoke-static {v0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 290
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->build()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/tacotown/proto/data/UserRef;
    .registers 6

    .prologue
    .line 304
    new-instance v1, Lcom/google/apps/tacotown/proto/data/UserRef;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/tacotown/proto/data/UserRef;-><init>(Lcom/google/apps/tacotown/proto/data/UserRef$Builder;Lcom/google/apps/tacotown/proto/data/UserRef$1;)V

    .line 305
    .local v1, result:Lcom/google/apps/tacotown/proto/data/UserRef;
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    .line 306
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 307
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 308
    or-int/lit8 v2, v2, 0x1

    .line 310
    :cond_10
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->userId_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/tacotown/proto/data/UserRef;->userId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/UserRef;->access$302(Lcom/google/apps/tacotown/proto/data/UserRef;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 312
    or-int/lit8 v2, v2, 0x2

    .line 314
    :cond_1c
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->email_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/tacotown/proto/data/UserRef;->email_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/UserRef;->access$402(Lcom/google/apps/tacotown/proto/data/UserRef;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 316
    or-int/lit8 v2, v2, 0x4

    .line 318
    :cond_28
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/tacotown/proto/data/UserRef;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/UserRef;->access$502(Lcom/google/apps/tacotown/proto/data/UserRef;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    #setter for: Lcom/google/apps/tacotown/proto/data/UserRef;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/tacotown/proto/data/UserRef;->access$602(Lcom/google/apps/tacotown/proto/data/UserRef;I)I

    .line 320
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
    .registers 2

    .prologue
    .line 267
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 268
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->userId_:Ljava/lang/Object;

    .line 269
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    .line 270
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->email_:Ljava/lang/Object;

    .line 271
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    .line 272
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->name_:Ljava/lang/Object;

    .line 273
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    .line 274
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->clear()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->clear()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
    .registers 3

    .prologue
    .line 278
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->create()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/UserRef;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->clone()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->clone()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

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
    .line 251
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->clone()Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/UserRef;
    .registers 2

    .prologue
    .line 282
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/UserRef;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/apps/tacotown/proto/data/UserRef;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 324
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/UserRef;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/UserRef;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 334
    :cond_6
    :goto_6
    return-object p0

    .line 325
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/UserRef;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 326
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/UserRef;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->setUserId(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    .line 328
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/UserRef;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 329
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/UserRef;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->setEmail(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    .line 331
    :cond_21
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/UserRef;->hasName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 332
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/UserRef;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->setName(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 347
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 352
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    :sswitch_d
    return-object p0

    .line 359
    :sswitch_e
    iget v1, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    .line 360
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->userId_:Ljava/lang/Object;

    goto :goto_0

    .line 364
    :sswitch_1b
    iget v1, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    .line 365
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->email_:Ljava/lang/Object;

    goto :goto_0

    .line 369
    :sswitch_28
    iget v1, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    .line 370
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 347
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
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
    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 251
    check-cast p1, Lcom/google/apps/tacotown/proto/data/UserRef;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/UserRef;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

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
    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 431
    if-nez p1, :cond_8

    .line 432
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 434
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    .line 435
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->email_:Ljava/lang/Object;

    .line 437
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 467
    if-nez p1, :cond_8

    .line 468
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 470
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    .line 471
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->name_:Ljava/lang/Object;

    .line 473
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/UserRef$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 395
    if-nez p1, :cond_8

    .line 396
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 398
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->bitField0_:I

    .line 399
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/UserRef$Builder;->userId_:Ljava/lang/Object;

    .line 401
    return-object p0
.end method
