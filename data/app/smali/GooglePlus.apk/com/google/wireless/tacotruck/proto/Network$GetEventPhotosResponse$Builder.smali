.class public final Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private photoGroup_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 55155
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 55264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    .line 55156
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->maybeForceBuilderInitialization()V

    .line 55157
    return-void
.end method

.method static synthetic access$78000()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 1

    .prologue
    .line 55150
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 1

    .prologue
    .line 55162
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePhotoGroupIsMutable()V
    .registers 3

    .prologue
    .line 55267
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 55268
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    .line 55269
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->bitField0_:I

    .line 55271
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 55160
    return-void
.end method


# virtual methods
.method public addAllPhotoGroup(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 55334
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->ensurePhotoGroupIsMutable()V

    .line 55335
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 55337
    return-object p0
.end method

.method public addPhotoGroup(ILcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 55327
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->ensurePhotoGroupIsMutable()V

    .line 55328
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 55330
    return-object p0
.end method

.method public addPhotoGroup(ILcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 55310
    if-nez p2, :cond_8

    .line 55311
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 55313
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->ensurePhotoGroupIsMutable()V

    .line 55314
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 55316
    return-object p0
.end method

.method public addPhotoGroup(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 55320
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->ensurePhotoGroupIsMutable()V

    .line 55321
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55323
    return-object p0
.end method

.method public addPhotoGroup(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 55300
    if-nez p1, :cond_8

    .line 55301
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 55303
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->ensurePhotoGroupIsMutable()V

    .line 55304
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55306
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 55150
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;
    .registers 3

    .prologue
    .line 55181
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;

    move-result-object v0

    .line 55182
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 55183
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 55185
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 55150
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;
    .registers 5

    .prologue
    .line 55199
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 55200
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->bitField0_:I

    .line 55201
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 55202
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    .line 55203
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->bitField0_:I

    .line 55205
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->photoGroup_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->access$78202(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;Ljava/util/List;)Ljava/util/List;

    .line 55206
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 55150
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 55150
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 2

    .prologue
    .line 55166
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 55167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    .line 55168
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->bitField0_:I

    .line 55169
    return-object p0
.end method

.method public clearPhotoGroup()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 2

    .prologue
    .line 55340
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    .line 55341
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->bitField0_:I

    .line 55343
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 55150
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 55150
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 3

    .prologue
    .line 55173
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

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
    .line 55150
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 55150
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 55150
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;
    .registers 2

    .prologue
    .line 55177
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoGroup(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;
    .registers 3
    .parameter "index"

    .prologue
    .line 55280
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    return-object v0
.end method

.method public getPhotoGroupCount()I
    .registers 2

    .prologue
    .line 55277
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhotoGroupList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55274
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 55225
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->getPhotoGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 55226
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->getPhotoGroup(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 55228
    const/4 v1, 0x0

    .line 55231
    :goto_12
    return v1

    .line 55225
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55231
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
    .line 55150
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 55150
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

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
    .line 55150
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55239
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 55240
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 55245
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55247
    :sswitch_d
    return-object p0

    .line 55252
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    move-result-object v0

    .line 55253
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 55254
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->addPhotoGroup(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    goto :goto_0

    .line 55240
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 55210
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 55221
    :cond_6
    :goto_6
    return-object p0

    .line 55211
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->photoGroup_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->access$78200(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 55212
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 55213
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->photoGroup_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->access$78200(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    .line 55214
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 55216
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->ensurePhotoGroupIsMutable()V

    .line 55217
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->photoGroup_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->access$78200(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setPhotoGroup(ILcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 55294
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->ensurePhotoGroupIsMutable()V

    .line 55295
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 55297
    return-object p0
.end method

.method public setPhotoGroup(ILcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 55284
    if-nez p2, :cond_8

    .line 55285
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 55287
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->ensurePhotoGroupIsMutable()V

    .line 55288
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->photoGroup_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 55290
    return-object p0
.end method
