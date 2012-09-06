.class public final Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetEventPhotosResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 55356
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;

    .line 55357
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->initFields()V

    .line 55358
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 54995
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 55032
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->memoizedIsInitialized:B

    .line 55055
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->memoizedSerializedSize:I

    .line 54996
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54990
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 54997
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 55032
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->memoizedIsInitialized:B

    .line 55055
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->memoizedSerializedSize:I

    .line 54997
    return-void
.end method

.method static synthetic access$78200(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54990
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->photoGroup_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$78202(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54990
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->photoGroup_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;
    .registers 1

    .prologue
    .line 55001
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 55030
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->photoGroup_:Ljava/util/List;

    .line 55031
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 1

    .prologue
    .line 55143
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->access$78000()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 55146
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 54990
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;
    .registers 2

    .prologue
    .line 55005
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;

    return-object v0
.end method

.method public getPhotoGroup(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;
    .registers 3
    .parameter "index"

    .prologue
    .line 55022
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->photoGroup_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    return-object v0
.end method

.method public getPhotoGroupCount()I
    .registers 2

    .prologue
    .line 55019
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->photoGroup_:Ljava/util/List;

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
    .line 55012
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->photoGroup_:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoGroupOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroupOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 55026
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->photoGroup_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroupOrBuilder;

    return-object v0
.end method

.method public getPhotoGroupOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroupOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55016
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->photoGroup_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 55057
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->memoizedSerializedSize:I

    .line 55058
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 55066
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 55060
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 55061
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->photoGroup_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 55062
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->photoGroup_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 55061
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 55065
    :cond_22
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 55066
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 55034
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->memoizedIsInitialized:B

    .line 55035
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 55044
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 55035
    goto :goto_9

    .line 55037
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->getPhotoGroupCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 55038
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->getPhotoGroup(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 55039
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 55040
    goto :goto_9

    .line 55037
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 55043
    :cond_24
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 54990
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 2

    .prologue
    .line 55144
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 54990
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;
    .registers 2

    .prologue
    .line 55148
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 55073
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55049
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->getSerializedSize()I

    .line 55050
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->photoGroup_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 55051
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponse;->photoGroup_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55050
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 55053
    :cond_1b
    return-void
.end method
