.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPeopleRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

.field private static final serialVersionUID:J


# instance fields
.field private focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

.field private gaiaId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9726
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    .line 9727
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->initFields()V

    .line 9728
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9309
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9354
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->memoizedIsInitialized:B

    .line 9374
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->memoizedSerializedSize:I

    .line 9310
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9304
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9311
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9354
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->memoizedIsInitialized:B

    .line 9374
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->memoizedSerializedSize:I

    .line 9311
    return-void
.end method

.method static synthetic access$12800(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9304
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->gaiaId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12802(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9304
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->gaiaId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12900(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9304
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$12902(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9304
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;
    .registers 1

    .prologue
    .line 9315
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 9351
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->gaiaId_:Ljava/util/List;

    .line 9352
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    .line 9353
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9304
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;
    .registers 2

    .prologue
    .line 9319
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;

    return-object v0
.end method

.method public getFocusObfuscatedId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 9347
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFocusObfuscatedIdCount()I
    .registers 2

    .prologue
    .line 9344
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getFocusObfuscatedIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9341
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getGaiaId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 9333
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->gaiaId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGaiaIdCount()I
    .registers 2

    .prologue
    .line 9330
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->gaiaId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGaiaIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9327
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->gaiaId_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 9376
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->memoizedSerializedSize:I

    .line 9377
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    move v3, v2

    .line 9399
    .end local v2           #size:I
    .local v3, size:I
    :goto_6
    return v3

    .line 9379
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_7
    const/4 v2, 0x0

    .line 9381
    const/4 v0, 0x0

    .line 9382
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->gaiaId_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_26

    .line 9383
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->gaiaId_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v0, v4

    .line 9382
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 9386
    :cond_26
    add-int/2addr v2, v0

    .line 9387
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->getGaiaIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 9390
    const/4 v0, 0x0

    .line 9391
    const/4 v1, 0x0

    :goto_34
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4a

    .line 9392
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 9391
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 9395
    :cond_4a
    add-int/2addr v2, v0

    .line 9396
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->getFocusObfuscatedIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 9398
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 9399
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_6
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 9406
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9365
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->getSerializedSize()I

    .line 9366
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->gaiaId_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 9367
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->gaiaId_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9366
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 9369
    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 9370
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequest;->focusObfuscatedId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9369
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 9372
    :cond_35
    return-void
.end method
