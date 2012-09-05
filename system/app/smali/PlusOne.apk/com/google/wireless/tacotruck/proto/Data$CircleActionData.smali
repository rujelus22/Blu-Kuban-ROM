.class public final Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CircleActionDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CircleActionData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

.field private static final serialVersionUID:J


# instance fields
.field private gaiaId_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Lcom/google/protobuf/LazyStringList;

.field private profileType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25878
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 25879
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->initFields()V

    .line 25880
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 25343
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 25402
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->memoizedIsInitialized:B

    .line 25425
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->memoizedSerializedSize:I

    .line 25344
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25338
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 25345
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 25402
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->memoizedIsInitialized:B

    .line 25425
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->memoizedSerializedSize:I

    .line 25345
    return-void
.end method

.method static synthetic access$34800(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25338
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$34802(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25338
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$34900(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25338
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$34902(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25338
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$35000(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25338
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$35002(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25338
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    .registers 1

    .prologue
    .line 25349
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 25398
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 25399
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    .line 25400
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    .line 25401
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 1

    .prologue
    .line 25536
    #calls: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->access$34600()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 25539
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25338
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    .registers 2

    .prologue
    .line 25353
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    return-object v0
.end method

.method public getGaiaId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 25367
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGaiaIdCount()I
    .registers 2

    .prologue
    .line 25364
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25361
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 25381
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameCount()I
    .registers 2

    .prologue
    .line 25378
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getNameList()Ljava/util/List;
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
    .line 25375
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getProfileType(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    .registers 3
    .parameter "index"

    .prologue
    .line 25394
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    return-object v0
.end method

.method public getProfileTypeCount()I
    .registers 2

    .prologue
    .line 25391
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getProfileTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25388
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 25427
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->memoizedSerializedSize:I

    .line 25428
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    move v3, v2

    .line 25459
    .end local v2           #size:I
    .local v3, size:I
    :goto_6
    return v3

    .line 25430
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_7
    const/4 v2, 0x0

    .line 25432
    const/4 v0, 0x0

    .line 25433
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_20

    .line 25434
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 25433
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 25437
    :cond_20
    add-int/2addr v2, v0

    .line 25438
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getGaiaIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 25441
    const/4 v0, 0x0

    .line 25442
    const/4 v1, 0x0

    :goto_2e
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_44

    .line 25443
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 25442
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 25446
    :cond_44
    add-int/2addr v2, v0

    .line 25447
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getNameList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 25450
    const/4 v0, 0x0

    .line 25451
    const/4 v1, 0x0

    :goto_52
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6e

    .line 25452
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 25451
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 25455
    :cond_6e
    add-int/2addr v2, v0

    .line 25456
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 25458
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->memoizedSerializedSize:I

    move v3, v2

    .line 25459
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 25404
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->memoizedIsInitialized:B

    .line 25405
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 25408
    :goto_8
    return v1

    .line 25405
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 25407
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 25466
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
    .line 25413
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getSerializedSize()I

    .line 25414
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 25415
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 25414
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 25417
    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 25418
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 25417
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 25420
    :cond_2f
    const/4 v0, 0x0

    :goto_30
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 25421
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 25420
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 25423
    :cond_4b
    return-void
.end method
