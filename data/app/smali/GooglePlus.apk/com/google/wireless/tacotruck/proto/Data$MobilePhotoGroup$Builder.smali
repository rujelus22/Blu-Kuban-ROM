.class public final Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroupOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;",
        "Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroupOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private photo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 19622
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 19731
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    .line 19623
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->maybeForceBuilderInitialization()V

    .line 19624
    return-void
.end method

.method static synthetic access$26000()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 1

    .prologue
    .line 19617
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 1

    .prologue
    .line 19629
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePhotoIsMutable()V
    .registers 3

    .prologue
    .line 19734
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 19735
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    .line 19736
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->bitField0_:I

    .line 19738
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 19627
    return-void
.end method


# virtual methods
.method public addAllPhoto(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;"
        }
    .end annotation

    .prologue
    .line 19801
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->ensurePhotoIsMutable()V

    .line 19802
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 19804
    return-object p0
.end method

.method public addPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 19794
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->ensurePhotoIsMutable()V

    .line 19795
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19797
    return-object p0
.end method

.method public addPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 19777
    if-nez p2, :cond_8

    .line 19778
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19780
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->ensurePhotoIsMutable()V

    .line 19781
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19783
    return-object p0
.end method

.method public addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 19787
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->ensurePhotoIsMutable()V

    .line 19788
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19790
    return-object p0
.end method

.method public addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19767
    if-nez p1, :cond_8

    .line 19768
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19770
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->ensurePhotoIsMutable()V

    .line 19771
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19773
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19617
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;
    .registers 3

    .prologue
    .line 19648
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    move-result-object v0

    .line 19649
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 19650
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 19652
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19617
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;
    .registers 5

    .prologue
    .line 19666
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;-><init>(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 19667
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->bitField0_:I

    .line 19668
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 19669
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    .line 19670
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->bitField0_:I

    .line 19672
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->photo_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->access$26202(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;Ljava/util/List;)Ljava/util/List;

    .line 19673
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19617
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19617
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 2

    .prologue
    .line 19633
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 19634
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    .line 19635
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->bitField0_:I

    .line 19636
    return-object p0
.end method

.method public clearPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 2

    .prologue
    .line 19807
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    .line 19808
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->bitField0_:I

    .line 19810
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 19617
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19617
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 3

    .prologue
    .line 19640
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

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
    .line 19617
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 19617
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19617
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;
    .registers 2

    .prologue
    .line 19644
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 19747
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getPhotoCount()I
    .registers 2

    .prologue
    .line 19744
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhotoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19741
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 19692
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->getPhotoCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 19693
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 19695
    const/4 v1, 0x0

    .line 19698
    :goto_12
    return v1

    .line 19692
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19698
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
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
    .line 19617
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 19617
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

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
    .line 19617
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19706
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 19707
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 19712
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 19714
    :sswitch_d
    return-object p0

    .line 19719
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 19720
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 19721
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    goto :goto_0

    .line 19707
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 19677
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 19688
    :cond_6
    :goto_6
    return-object p0

    .line 19678
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->access$26200(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 19679
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 19680
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->access$26200(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    .line 19681
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->bitField0_:I

    goto :goto_6

    .line 19683
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->ensurePhotoIsMutable()V

    .line 19684
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->access$26200(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 19761
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->ensurePhotoIsMutable()V

    .line 19762
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19764
    return-object p0
.end method

.method public setPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 19751
    if-nez p2, :cond_8

    .line 19752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19754
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->ensurePhotoIsMutable()V

    .line 19755
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19757
    return-object p0
.end method
