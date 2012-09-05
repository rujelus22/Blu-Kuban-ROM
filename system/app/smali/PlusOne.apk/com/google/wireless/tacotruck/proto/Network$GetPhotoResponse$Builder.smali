.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 47587
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 47693
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 47588
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->maybeForceBuilderInitialization()V

    .line 47589
    return-void
.end method

.method static synthetic access$66800(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47582
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$66900()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;
    .registers 1

    .prologue
    .line 47582
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47622
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    move-result-object v0

    .line 47623
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 47624
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 47627
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;
    .registers 1

    .prologue
    .line 47594
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 47592
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47582
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;
    .registers 6

    .prologue
    .line 47631
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 47632
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->bitField0_:I

    .line 47633
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 47634
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 47635
    or-int/lit8 v2, v2, 0x1

    .line 47637
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->access$67102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 47638
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->access$67202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;I)I

    .line 47639
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 47582
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 47582
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;
    .registers 2

    .prologue
    .line 47598
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 47599
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 47600
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->bitField0_:I

    .line 47601
    return-object p0
.end method

.method public clearPhoto()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;
    .registers 2

    .prologue
    .line 47729
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 47731
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->bitField0_:I

    .line 47732
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 47582
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 47582
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;
    .registers 3

    .prologue
    .line 47605
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;

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
    .line 47582
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 47582
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47582
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;
    .registers 2

    .prologue
    .line 47609
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2

    .prologue
    .line 47698
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public hasPhoto()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 47695
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 47582
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;

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
    .line 47582
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47665
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 47666
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 47671
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47673
    :sswitch_d
    return-object p0

    .line 47678
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 47679
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->hasPhoto()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 47680
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 47682
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 47683
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->setPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;

    goto :goto_0

    .line 47666
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 47643
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 47647
    :cond_6
    :goto_6
    return-object p0

    .line 47644
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->hasPhoto()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47645
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->mergePhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;

    goto :goto_6
.end method

.method public mergePhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 47717
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 47719
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 47725
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->bitField0_:I

    .line 47726
    return-object p0

    .line 47722
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    goto :goto_1f
.end method

.method public setPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 47711
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 47713
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->bitField0_:I

    .line 47714
    return-object p0
.end method

.method public setPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 47701
    if-nez p1, :cond_8

    .line 47702
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47704
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 47706
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->bitField0_:I

    .line 47707
    return-object p0
.end method
