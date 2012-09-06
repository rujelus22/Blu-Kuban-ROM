.class public final Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private albumId_:J

.field private bitField0_:I

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 52394
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 52525
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->name_:Ljava/lang/Object;

    .line 52395
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->maybeForceBuilderInitialization()V

    .line 52396
    return-void
.end method

.method static synthetic access$73700()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
    .registers 1

    .prologue
    .line 52389
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
    .registers 1

    .prologue
    .line 52401
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 52399
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52389
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;
    .registers 3

    .prologue
    .line 52422
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    move-result-object v0

    .line 52423
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 52424
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 52426
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52389
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;
    .registers 6

    .prologue
    .line 52440
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 52441
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    .line 52442
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 52443
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 52444
    or-int/lit8 v2, v2, 0x1

    .line 52446
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->albumId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->albumId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->access$73902(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;J)J

    .line 52447
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 52448
    or-int/lit8 v2, v2, 0x2

    .line 52450
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->access$74002(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52451
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->access$74102(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;I)I

    .line 52452
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 52389
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 52389
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
    .registers 3

    .prologue
    .line 52405
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 52406
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->albumId_:J

    .line 52407
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    .line 52408
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->name_:Ljava/lang/Object;

    .line 52409
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    .line 52410
    return-object p0
.end method

.method public clearAlbumId()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
    .registers 3

    .prologue
    .line 52518
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    .line 52519
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->albumId_:J

    .line 52521
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
    .registers 2

    .prologue
    .line 52549
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    .line 52550
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->name_:Ljava/lang/Object;

    .line 52552
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 52389
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 52389
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
    .registers 3

    .prologue
    .line 52414
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

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
    .line 52389
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 52509
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->albumId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 52389
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52389
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;
    .registers 2

    .prologue
    .line 52418
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 52530
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->name_:Ljava/lang/Object;

    .line 52531
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 52532
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 52533
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->name_:Ljava/lang/Object;

    .line 52536
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

.method public hasAlbumId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 52506
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 52527
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 52467
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
    .line 52389
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 52389
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

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
    .line 52389
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52475
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 52476
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 52481
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52483
    :sswitch_d
    return-object p0

    .line 52488
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    .line 52489
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->albumId_:J

    goto :goto_0

    .line 52493
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    .line 52494
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 52476
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 52456
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 52463
    :cond_6
    :goto_6
    return-object p0

    .line 52457
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 52458
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->getAlbumId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    .line 52460
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->hasName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 52461
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;

    goto :goto_6
.end method

.method public setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 52512
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    .line 52513
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->albumId_:J

    .line 52515
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 52540
    if-nez p1, :cond_8

    .line 52541
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52543
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->bitField0_:I

    .line 52544
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;->name_:Ljava/lang/Object;

    .line 52546
    return-object p0
.end method
