.class public final Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

.field private photo_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 44581
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 44695
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->photo_:Ljava/lang/Object;

    .line 44731
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 44582
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->maybeForceBuilderInitialization()V

    .line 44583
    return-void
.end method

.method static synthetic access$61900()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 1

    .prologue
    .line 44576
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 1

    .prologue
    .line 44588
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 44586
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;
    .registers 3

    .prologue
    .line 44609
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v0

    .line 44610
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 44611
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 44613
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;
    .registers 6

    .prologue
    .line 44627
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 44628
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    .line 44629
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 44630
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 44631
    or-int/lit8 v2, v2, 0x1

    .line 44633
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->photo_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->photo_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->access$62102(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44634
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 44635
    or-int/lit8 v2, v2, 0x2

    .line 44637
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->access$62202(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 44638
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->access$62302(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;I)I

    .line 44639
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 44576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 44576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 2

    .prologue
    .line 44592
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 44593
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->photo_:Ljava/lang/Object;

    .line 44594
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    .line 44595
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 44596
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    .line 44597
    return-object p0
.end method

.method public clearMediaRef()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 2

    .prologue
    .line 44767
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 44769
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    .line 44770
    return-object p0
.end method

.method public clearPhoto()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44719
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    .line 44720
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->getPhoto()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->photo_:Ljava/lang/Object;

    .line 44722
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 44576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 44576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 3

    .prologue
    .line 44601
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

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
    .line 44576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 44576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44576
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;
    .registers 2

    .prologue
    .line 44605
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getMediaRef()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 2

    .prologue
    .line 44736
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    return-object v0
.end method

.method public getPhoto()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44700
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->photo_:Ljava/lang/Object;

    .line 44701
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 44702
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 44703
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->photo_:Ljava/lang/Object;

    .line 44706
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

.method public hasMediaRef()Z
    .registers 3

    .prologue
    .line 44733
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

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

.method public hasPhoto()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 44697
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

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
    .line 44654
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
    .line 44576
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 44576
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

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
    .line 44576
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44662
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 44663
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_38

    .line 44668
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44670
    :sswitch_d
    return-object p0

    .line 44675
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    .line 44676
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->photo_:Ljava/lang/Object;

    goto :goto_0

    .line 44680
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    .line 44681
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->hasMediaRef()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 44682
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->getMediaRef()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    .line 44684
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 44685
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->setMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    goto :goto_0

    .line 44663
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 44643
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 44650
    :cond_6
    :goto_6
    return-object p0

    .line 44644
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->hasPhoto()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 44645
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->getPhoto()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->setPhoto(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    .line 44647
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->hasMediaRef()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 44648
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->getMediaRef()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mergeMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    goto :goto_6
.end method

.method public mergeMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 44755
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 44757
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 44763
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    .line 44764
    return-object p0

    .line 44760
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    goto :goto_1f
.end method

.method public setMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 44749
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 44751
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    .line 44752
    return-object p0
.end method

.method public setMediaRef(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 44739
    if-nez p1, :cond_8

    .line 44740
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44742
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mediaRef_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 44744
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    .line 44745
    return-object p0
.end method

.method public setPhoto(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44710
    if-nez p1, :cond_8

    .line 44711
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44713
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    .line 44714
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->photo_:Ljava/lang/Object;

    .line 44716
    return-object p0
.end method
