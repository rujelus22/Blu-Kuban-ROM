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

.field private photo_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 43763
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 43859
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->photo_:Ljava/lang/Object;

    .line 43764
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->maybeForceBuilderInitialization()V

    .line 43765
    return-void
.end method

.method static synthetic access$61000()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 1

    .prologue
    .line 43758
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 1

    .prologue
    .line 43770
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 43768
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;
    .registers 3

    .prologue
    .line 43789
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v0

    .line 43790
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 43791
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 43793
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43758
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;
    .registers 6

    .prologue
    .line 43807
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 43808
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    .line 43809
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 43810
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 43811
    or-int/lit8 v2, v2, 0x1

    .line 43813
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->photo_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->photo_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->access$61202(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43814
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->access$61302(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;I)I

    .line 43815
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 43758
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 43758
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 2

    .prologue
    .line 43774
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 43775
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->photo_:Ljava/lang/Object;

    .line 43776
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    .line 43777
    return-object p0
.end method

.method public clearPhoto()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 2

    .prologue
    .line 43883
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    .line 43884
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->getPhoto()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->photo_:Ljava/lang/Object;

    .line 43886
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 43758
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 43758
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 3

    .prologue
    .line 43781
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
    .line 43758
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 43758
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43758
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;
    .registers 2

    .prologue
    .line 43785
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()Ljava/lang/String;
    .registers 4

    .prologue
    .line 43864
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->photo_:Ljava/lang/Object;

    .line 43865
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 43866
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 43867
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->photo_:Ljava/lang/Object;

    .line 43870
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

.method public hasPhoto()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 43861
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

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
    .line 43758
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

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
    .line 43758
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43835
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 43836
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 43841
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43843
    :sswitch_d
    return-object p0

    .line 43848
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    .line 43849
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->photo_:Ljava/lang/Object;

    goto :goto_0

    .line 43836
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 43819
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 43823
    :cond_6
    :goto_6
    return-object p0

    .line 43820
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->hasPhoto()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43821
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->getPhoto()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->setPhoto(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    goto :goto_6
.end method

.method public setPhoto(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 43874
    if-nez p1, :cond_8

    .line 43875
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43877
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->bitField0_:I

    .line 43878
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->photo_:Ljava/lang/Object;

    .line 43880
    return-object p0
.end method
