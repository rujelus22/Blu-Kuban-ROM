.class public final Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 44896
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 45002
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 44897
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->maybeForceBuilderInitialization()V

    .line 44898
    return-void
.end method

.method static synthetic access$62500(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44891
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$62600()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 1

    .prologue
    .line 44891
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44931
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    .line 44932
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 44933
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 44936
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 1

    .prologue
    .line 44903
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 44901
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44891
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .registers 6

    .prologue
    .line 44940
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 44941
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    .line 44942
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 44943
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 44944
    or-int/lit8 v2, v2, 0x1

    .line 44946
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->access$62802(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 44947
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->access$62902(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;I)I

    .line 44948
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 44891
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 44891
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 2

    .prologue
    .line 44907
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 44908
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 44909
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    .line 44910
    return-object p0
.end method

.method public clearPhoto()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 2

    .prologue
    .line 45038
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 45040
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    .line 45041
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 44891
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 44891
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 3

    .prologue
    .line 44914
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

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
    .line 44891
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 44891
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44891
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .registers 2

    .prologue
    .line 44918
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2

    .prologue
    .line 45007
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public hasPhoto()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 45004
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

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
    .line 44891
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

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
    .line 44891
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44974
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 44975
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 44980
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44982
    :sswitch_d
    return-object p0

    .line 44987
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 44988
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->hasPhoto()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 44989
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    .line 44991
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 44992
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->setPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    goto :goto_0

    .line 44975
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 44952
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 44956
    :cond_6
    :goto_6
    return-object p0

    .line 44953
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->hasPhoto()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 44954
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->mergePhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    goto :goto_6
.end method

.method public mergePhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 45026
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 45028
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 45034
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    .line 45035
    return-object p0

    .line 45031
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    goto :goto_1f
.end method

.method public setPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 45020
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 45022
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    .line 45023
    return-object p0
.end method

.method public setPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 45010
    if-nez p1, :cond_8

    .line 45011
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45013
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 45015
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->bitField0_:I

    .line 45016
    return-object p0
.end method
