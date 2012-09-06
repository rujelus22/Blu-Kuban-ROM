.class public final Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteAlbumResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17184
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;

    .line 17185
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->initFields()V

    .line 17186
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 16978
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 16993
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->memoizedIsInitialized:B

    .line 17007
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->memoizedSerializedSize:I

    .line 16979
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16973
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 16980
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16993
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->memoizedIsInitialized:B

    .line 17007
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->memoizedSerializedSize:I

    .line 16980
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;
    .registers 1

    .prologue
    .line 16984
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 16992
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;
    .registers 1

    .prologue
    .line 17091
    #calls: Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;->access$22600()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;)Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 17094
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;)Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16973
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;
    .registers 2

    .prologue
    .line 16988
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 17009
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->memoizedSerializedSize:I

    .line 17010
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 17014
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 17012
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 17013
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 17014
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 16995
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->memoizedIsInitialized:B

    .line 16996
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 16999
    :goto_8
    return v1

    .line 16996
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 16998
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16973
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;
    .registers 2

    .prologue
    .line 17092
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16973
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;
    .registers 2

    .prologue
    .line 17096
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;)Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse$Builder;

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
    .line 17021
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17004
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumResponse;->getSerializedSize()I

    .line 17005
    return-void
.end method
