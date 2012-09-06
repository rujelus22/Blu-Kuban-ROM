.class public final Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "A2a.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/A2a$HangoutOccupantOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;",
        "Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;",
        ">;",
        "Lcom/google/apps/tacotown/proto/A2a$HangoutOccupantOrBuilder;"
    }
.end annotation


# instance fields
.field private avatarUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private obfuscatedGaiaId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3404
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3536
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->name_:Ljava/lang/Object;

    .line 3572
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->avatarUrl_:Ljava/lang/Object;

    .line 3608
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->obfuscatedGaiaId_:Ljava/lang/Object;

    .line 3405
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->maybeForceBuilderInitialization()V

    .line 3406
    return-void
.end method

.method static synthetic access$3900()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;
    .registers 1

    .prologue
    .line 3399
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->create()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;
    .registers 1

    .prologue
    .line 3411
    new-instance v0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3409
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;
    .registers 3

    .prologue
    .line 3434
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    move-result-object v0

    .line 3435
    .local v0, result:Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;
    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3436
    invoke-static {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3438
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3399
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->build()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;
    .registers 6

    .prologue
    .line 3452
    new-instance v1, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;-><init>(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;Lcom/google/apps/tacotown/proto/A2a$1;)V

    .line 3453
    .local v1, result:Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    .line 3454
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3455
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3456
    or-int/lit8 v2, v2, 0x1

    .line 3458
    :cond_10
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->access$4102(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3459
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 3460
    or-int/lit8 v2, v2, 0x2

    .line 3462
    :cond_1c
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->avatarUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->access$4202(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3463
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 3464
    or-int/lit8 v2, v2, 0x4

    .line 3466
    :cond_28
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->obfuscatedGaiaId_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->obfuscatedGaiaId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->access$4302(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3467
    #setter for: Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->access$4402(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;I)I

    .line 3468
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3399
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;
    .registers 2

    .prologue
    .line 3415
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3416
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->name_:Ljava/lang/Object;

    .line 3417
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    .line 3418
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->avatarUrl_:Ljava/lang/Object;

    .line 3419
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    .line 3420
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->obfuscatedGaiaId_:Ljava/lang/Object;

    .line 3421
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    .line 3422
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3399
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->clear()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3399
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->clear()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;
    .registers 3

    .prologue
    .line 3426
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->create()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;)Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3399
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->clone()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3399
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->clone()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

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
    .line 3399
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->clone()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;
    .registers 2

    .prologue
    .line 3430
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3399
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3399
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    move-result-object v0

    return-object v0
.end method

.method public hasAvatarUrl()Z
    .registers 3

    .prologue
    .line 3574
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3538
    iget v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 3486
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->hasName()Z

    move-result v1

    if-nez v1, :cond_8

    .line 3494
    :cond_7
    :goto_7
    return v0

    .line 3490
    :cond_8
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->hasAvatarUrl()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3494
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;)Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 3472
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3482
    :cond_6
    :goto_6
    return-object p0

    .line 3473
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->hasName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3474
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->setName(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    .line 3476
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->hasAvatarUrl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3477
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->setAvatarUrl(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    .line 3479
    :cond_21
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->hasObfuscatedGaiaId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3480
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;->getObfuscatedGaiaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->setObfuscatedGaiaId(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3502
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3503
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 3508
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3510
    :sswitch_d
    return-object p0

    .line 3515
    :sswitch_e
    iget v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    .line 3516
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 3520
    :sswitch_1b
    iget v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    .line 3521
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->avatarUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 3525
    :sswitch_28
    iget v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    .line 3526
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->obfuscatedGaiaId_:Ljava/lang/Object;

    goto :goto_0

    .line 3503
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
    .line 3399
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3399
    check-cast p1, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant;)Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

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
    .line 3399
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3587
    if-nez p1, :cond_8

    .line 3588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3590
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    .line 3591
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->avatarUrl_:Ljava/lang/Object;

    .line 3593
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3551
    if-nez p1, :cond_8

    .line 3552
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3554
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    .line 3555
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->name_:Ljava/lang/Object;

    .line 3557
    return-object p0
.end method

.method public setObfuscatedGaiaId(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3623
    if-nez p1, :cond_8

    .line 3624
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3626
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->bitField0_:I

    .line 3627
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOccupant$Builder;->obfuscatedGaiaId_:Ljava/lang/Object;

    .line 3629
    return-object p0
.end method
