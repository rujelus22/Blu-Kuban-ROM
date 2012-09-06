.class public final Lcom/google/wireless/contacts/proto/Client$MobileAlbums;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileAlbumsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileAlbums"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6216
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    .line 6217
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->initFields()V

    .line 6218
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6010
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6025
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->memoizedIsInitialized:B

    .line 6039
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->memoizedSerializedSize:I

    .line 6011
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6005
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6012
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6025
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->memoizedIsInitialized:B

    .line 6039
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->memoizedSerializedSize:I

    .line 6012
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAlbums;
    .registers 1

    .prologue
    .line 6016
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 6024
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;
    .registers 1

    .prologue
    .line 6123
    #calls: Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;->access$7900()Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileAlbums;)Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 6126
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileAlbums;)Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6005
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAlbums;
    .registers 2

    .prologue
    .line 6020
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 6041
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->memoizedSerializedSize:I

    .line 6042
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 6046
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 6044
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 6045
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->memoizedSerializedSize:I

    move v1, v0

    .line 6046
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 6027
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->memoizedIsInitialized:B

    .line 6028
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 6031
    :goto_8
    return v1

    .line 6028
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 6030
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6005
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;
    .registers 2

    .prologue
    .line 6124
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6005
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->toBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;
    .registers 2

    .prologue
    .line 6128
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileAlbums;)Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;

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
    .line 6053
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
    .line 6036
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->getSerializedSize()I

    .line 6037
    return-void
.end method
